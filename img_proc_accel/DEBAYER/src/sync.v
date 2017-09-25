////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP04 = Bayer to RGB Conversion
// Module Name:    sync = Connect between clock domains
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This module implements the connection of two clock domains
//
// Dependencies:
//    (no dependency)
//
// Revision:
//    1.0
////////////////////////////////////////////////////////////////////////////////


`timescale 1 ns / 100 ps


module sync(
    m_data,

    reset_n, s_reset, mclk, sclk, s_data
);

parameter DW = 32;

output [DW-1:0] m_data; // master data
reg [DW-1:0] m_data; // master data

input  [DW-1:0] s_data;     // slave data
input  reset_n, s_reset;    // asunchronous reset signal
input  mclk;                // master clock
input  sclk;                // slave clock
//---------------------------------------------------------------------
`define M_IDLE 2'b01
`define M_WAIT 2'b10

`define S_IDLE 3'b001
`define S_ACK  3'b010
`define S_END  3'b100

//---------------------------------------------------------------------
reg [1:0]    m_state;
reg          m_get, s_put_sync;
//---------------------------------------------------------------------
reg [2:0]    s_state;
reg          s_put, m_get_sync;
reg [DW-1:0] s_data_reg;
reg          s_reset_sync;
//---------------------------------------------------------------------


// master domain state machine
always @(posedge mclk or negedge reset_n) begin
    if (~reset_n) begin
        m_state    <= `M_IDLE;
        m_get      <= 1'b0;
        m_data     <= 0;
        s_put_sync <= 1'b1;                 
    end else begin
        if (s_reset) begin
            m_state    <= `M_IDLE;
            m_get      <= 1'b0;
            m_data     <= 0;
            s_put_sync <= 1'b1;
        end else begin

            s_put_sync <= s_put;                // capture slave acknowledge signal

            case (m_state)
                `M_IDLE : begin
                    if (~s_put_sync) begin      // wait until slave is idle
                        m_get   <= 1'b1;        // request slave signals
                        m_state <= `M_WAIT; 
                    end
                end
                `M_WAIT : begin
                    if (s_put_sync) begin       // wait until slave data are valid
                        m_get   <= 1'b0;
                        m_data  <= s_data_reg;  // capture slave data to master clock domain
                        m_state <= `M_IDLE;
                    end
                end
                default : begin
                    m_state    <= `M_IDLE;
                    m_get      <= 1'b0;
                    s_put_sync <= 1'b1;
                end
            endcase
        end
    end
end
//---------------------------------------------------------------------


// slave domain state machine
always @(posedge sclk or negedge reset_n) begin
    if (~reset_n) begin
        s_state <= `S_IDLE;
        s_put <= 1'b0;
        s_data_reg <= 0;
        m_get_sync <= 1'b0;
        s_reset_sync <= 1'b0;
    end else begin
        m_get_sync <= m_get;                // capture master request
        s_reset_sync <= s_reset;

        if (s_reset_sync) begin
            s_state <= `S_IDLE;
            s_put <= 1'b0;
            s_data_reg <= 0;
            m_get_sync <= 1'b0;
            s_reset_sync <= 1'b0;
        end else begin
        
            case (s_state)
                `S_IDLE : begin
                    if (m_get_sync) begin       // wait for master request
                        s_state <= `S_ACK;
                        s_data_reg <= s_data;   // capture slave data
                    end
                end
                `S_ACK : begin          
                    s_put <= 1'b1;              // assert ack after a slave cycle
                    s_state <= `S_END;
                end
                `S_END : begin
                    if (~m_get_sync) begin      // wait deassertion of master request
                        s_put <= 1'b0;          // deassert ack
                        s_state <= `S_IDLE;
                    end
                end

                default : begin
                    s_state <= `S_IDLE;
                    s_put <= 1'b0;
                    s_data_reg <= 0;
                    m_get_sync <= 0;
                end
            endcase
        end
    end
end
//---------------------------------------------------------------------

endmodule
