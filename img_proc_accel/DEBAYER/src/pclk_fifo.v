////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP04 = Bayer to RGB Conversion
// Module Name:    pclk_fifo = Pixel input fifo
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This module will decouple the pixel clock at the input and
//    feed the row memory at the system clock rate
//
// Dependencies:
//    sync.v
//
// Revision:
//    1.0
////////////////////////////////////////////////////////////////////////////////

module pclk_fifo (

    rst_n,

    // system clock signals
    pclk,
    sclk,

    pclk_frame_valid,
    pclk_line_valid,
    pclk_pixel_data,
    
    sclk_frame_valid,
    sclk_line_valid,
    sclk_pixel_data

);

parameter DATA_W = 10;

input rst_n;
input pclk;
input sclk;

input              pclk_frame_valid;
input              pclk_line_valid;
input [DATA_W-1:0] pclk_pixel_data;

output              sclk_frame_valid;
reg                 sclk_frame_valid;

output              sclk_line_valid;
reg                 sclk_line_valid;
output [DATA_W-1:0] sclk_pixel_data;
reg    [DATA_W-1:0] sclk_pixel_data;

reg [DATA_W-1:0] fifo[15:0];

wire [DATA_W:0] fifo_words;

reg [3:0] waddr;
reg [3:0] raddr;

reg  [1:0] frame_valid_reg;
wire [3:0] waddr_sync;

wire fifo_pop, fifo_push, fifo_empty;

//------------------------------------------------------------------------
sync #(4) sync_p2s(
//------------------------------------------------------------------------
    .m_data   ( waddr_sync), // sclk domain
          
    .reset_n  ( rst_n     ),
    .s_reset  ( 1'b0      ),
    .mclk     ( sclk      ),  // master clock
    .sclk     ( pclk      ),  // slave clock
    .s_data   ( waddr     )   // pclk domain
);



assign fifo_push = pclk_frame_valid & pclk_line_valid;

//------------------------------------------------------------------------
always @(posedge pclk or negedge rst_n ) begin
    if (~rst_n) begin
        waddr  <= 0;
    end else begin
        
        if ( fifo_push )
            waddr  <= waddr+1;

    end

end

always @(posedge pclk ) begin

    if ( fifo_push ) begin
        fifo[waddr]  <= pclk_pixel_data;
    end

end


always @(posedge sclk or negedge rst_n) begin
    if (~rst_n) begin 
        raddr     <= 0;
    end else begin
        if (fifo_pop ) 
            raddr <= raddr + 1;
   end
end

assign fifo_pop = sclk_frame_valid & ~fifo_empty;

always @(posedge sclk or negedge rst_n) begin
    if (~rst_n) begin 
        frame_valid_reg  <= 0;
    end else begin
        frame_valid_reg <= {frame_valid_reg[0],pclk_frame_valid};
   end
end

assign frame_valid_start = (frame_valid_reg==2'b01);
assign frame_valid_end   = (frame_valid_reg==2'b10);

wire frame_end;


reg [7:0] wait_cnt;

// wait 16 cycles before checking for frame_end
always @(posedge sclk or negedge rst_n) begin
    if (~rst_n) begin 
        wait_cnt  <= 8'h1F;
    end else begin
        if (frame_valid_reg[0])
            wait_cnt  <= 8'h1F;
        else 
            if (wait_cnt) 
                wait_cnt <= wait_cnt-1;

   end
end

assign frame_end = sclk_frame_valid & ~frame_valid_reg[0] & fifo_empty & (wait_cnt==0);
assign fifo_empty = (raddr == waddr_sync);
assign fifo_words = (waddr_sync >= raddr) ? waddr_sync - raddr : 16 - raddr + waddr_sync;

always @(posedge sclk or negedge rst_n) begin
    if (~rst_n) begin 
        sclk_frame_valid  <= 0;
    end else begin
        if (frame_valid_start)
            sclk_frame_valid <= 1'b1;

        if (frame_end)
            sclk_frame_valid <= 1'b0;
   end
end

always @(posedge sclk or negedge rst_n) begin
    if (~rst_n) begin 
        sclk_pixel_data     <= 0;
        sclk_line_valid     <= 1'b0;
    end else begin
        sclk_pixel_data <= fifo[raddr];
        sclk_line_valid <= fifo_pop;
    end
end



endmodule
