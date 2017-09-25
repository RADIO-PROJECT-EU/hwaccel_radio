////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP04 = Bayer to RGB Conversion
// Module Name:    debayer_ip_mode0 = Mode 0 debayer method
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This module implements the mode 0
//
// Dependencies:
//   (no dependency)
//
// Revision:
//    1.0
////////////////////////////////////////////////////////////////////////////////

module debayer_ip_mode0  (
    clk           ,
    rst_n         ,

    c_en          ,
    c_rows        ,
    c_cols        ,
    c_bayer_mode  ,
 
    frame_valid   ,
    line_valid    ,
    pixel_data    ,

    waddr0        ,
    we0           ,
    din0          ,
    raddr0        ,
 
    waddr1        ,
    we1           ,
    din1          ,
    raddr1        ,


    dout0         ,
    dout1         ,

    frame_valid_o ,
    line_valid_o  ,
    pixel_data_o  ,

    frame_start_o ,
    line_start_o  

);

parameter PIXSIZE = 16; 
parameter ROW_W = 13;
parameter COL_W = 14;



input   clk           ;
input   rst_n         ;

input   c_en          ;
input   [ROW_W : 0] c_rows ;
input   [COL_W : 0] c_cols ;
input   [1:0] c_bayer_mode  ;

input   frame_valid   ;
input   line_valid    ;
input   [PIXSIZE : 0] pixel_data    ;


output  [COL_W-1:0] waddr0 ;
output  we0 ;
output  [PIXSIZE-1:0] din0 ;
output  [COL_W-1:0] raddr0 ;

output  [COL_W-1:0] waddr1 ;
output  we1 ;
output  [PIXSIZE-1:0] din1 ;
output  [COL_W-1:0] raddr1 ;


input   [PIXSIZE-1:0] dout0 ;
input   [PIXSIZE-1:0] dout1 ;


output frame_valid_o ;
output line_valid_o  ;
output [3*PIXSIZE-1:0] pixel_data_o ;

output frame_start_o ;
output line_start_o  ;

reg [3*PIXSIZE-1:0] pixel_data_o ;

reg frame_valid_o ;
reg line_valid_o ;

reg [ROW_W:0] c_rows_r ;
reg [COL_W:0] c_cols_r ;

reg [ROW_W:0] rows_out ;
reg [COL_W:0] cols_out ;


always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        c_rows_r <= 0;
        c_cols_r <= 0;
    end else begin
        if (~c_en) begin
            c_rows_r <= c_rows-1;
            c_cols_r <= c_cols-1;
        end 
    end
end

reg [ROW_W:0] row_cnt;
reg [COL_W:0] col_cnt;

wire data_valid = frame_valid & line_valid;

reg frame_start_r, line_start_r;

wire first_row = (row_cnt==0);
wire first_col = (col_cnt==0);

reg read_en;

reg [4:0] read_en_r;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        read_en_r       <= 0;
    end else begin
        read_en_r  <= {read_en_r[3:0], read_en};
    end
end

reg [12:0] raddr_r;
reg read_sel;

reg frame_valid_int;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        row_cnt       <= 0;
        col_cnt       <= 0;
        frame_start_r <= 0;
        line_start_r  <= 0;
        read_en       <= 0;
        read_sel      <= 0;
    end else begin
        frame_start_r <= 0;
        line_start_r <= 0;
        if (~c_en) begin
            row_cnt <= 0;
            row_cnt <= 0;
        end else begin
            read_en <= 0;
            if (data_valid) begin
                
                if (row_cnt[0])  begin
                    read_en <= 1;
                    read_sel <= row_cnt[1];
                end
                
                if (col_cnt == c_cols_r) begin
                    col_cnt <= 0;
                    if (row_cnt == c_rows_r) begin
                        row_cnt <= 0;
                    end else begin
                        row_cnt <= row_cnt+1;
                    end
                end else begin
                    col_cnt <= col_cnt+1;
                end
                
                if (~frame_valid_int & first_row & first_col)
                    frame_start_r <= 1;
                if (first_col)
                    line_start_r <= 1;
            end
        end
    end
end

reg wen0,wen1,wen2,wen3;
reg [COL_W-1:0] waddr_r;
reg [PIXSIZE-1:0] din_r;
reg [20:0] data_cnt;


always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin

        wen0 <= 0;
        wen1 <= 0;

        waddr_r <= 0;
        din_r <= 0;
        
        data_cnt <= 0;

    end else begin

        wen0 <= 0;
        wen1 <= 0;

        if (data_valid) begin
            if (row_cnt[0] == 1'b0) wen0 <= 1'b1;
            if (row_cnt[0] == 1'b1) wen1 <= 1'b1;

            
            if (~read_en)
                data_cnt <= data_cnt+1;
            else
                data_cnt <= data_cnt-1;

            waddr_r <= col_cnt;
            din_r <= pixel_data;
        end else begin
            if (read_en)
                data_cnt <= data_cnt-2;
        end
    end
end

assign waddr0 = waddr_r;
assign waddr1 = waddr_r;


assign din0   = din_r;
assign din1   = din_r;

assign we0  = wen0;
assign we1  = wen1;



reg [ROW_W:0] read_row_cnt;


// bayer to real rgb (ie w/o interpolation)

reg [PIXSIZE-1:0] r0,r1,r2,r3;
reg line_valid_int;
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        raddr_r       <= 0;
        read_row_cnt  <= 0;
        line_valid_int  <= 0;
        r0            <= 0;
        r1            <= 0;
        r2            <= 0;
        r3            <= 0;
    end else begin
        
        
        line_valid_int <= 0;

        if (read_en_r[3] ) begin
            
            r0 <= r1;
            r2 <= r3;
            
            r1 <= dout0;
            r3 <= dout1;

        end
            
        if (read_en_r[3] & ~line_valid_int) begin

            if (~raddr_r[0]) begin
                line_valid_int <= 1;
            end

        end

        if (read_en_r[2] ) begin
            if (raddr_r == c_cols_r) begin
                raddr_r <= 0;
                if ({read_row_cnt,1'b1} == c_rows_r) begin
                    read_row_cnt  <= 0;
                end else begin
                    read_row_cnt <= read_row_cnt + 1;
                end
            end else begin
                raddr_r <= raddr_r+1;
            end
        end

    end
end

assign frame_start_o = frame_start_r;
assign line_start_o  = line_start_r;

assign raddr0 = raddr_r;
assign raddr1 = raddr_r;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        rows_out <= 0;
        cols_out <= 0;
        frame_valid_int <= 0;
    end else begin
        if (frame_start_r)
            frame_valid_int <= 1;

        if (frame_valid_int & line_valid_int) begin

            cols_out <= ({cols_out,1'b1} == c_cols_r) ? 0 : cols_out + 1;
            
            if ({cols_out,1'b1} == c_cols_r) begin
                rows_out <= ({rows_out,1'b1} == c_rows_r) ? 0 : rows_out + 1;
            end
            
            if (({cols_out,1'b1} == c_cols_r) && ({rows_out,1'b1} == c_rows_r))
                frame_valid_int <= 0;

        end
    end
end


reg [PIXSIZE-1:0] green0_sel_r;
reg [PIXSIZE-1:0] green1_sel_r;

reg [PIXSIZE-1:0] red_sel_r;
reg [PIXSIZE-1:0] blue_sel_r;

reg [PIXSIZE-1:0] green0_sel;
reg [PIXSIZE-1:0] green1_sel;

reg [PIXSIZE-1:0] red_sel;
reg [PIXSIZE-1:0] blue_sel;

always @(*) begin

case (c_bayer_mode)
	   2'b00: begin
	       red_sel  <= r3;
	       blue_sel <= r0;
	       green0_sel <= r1;
	       green1_sel <= r2;
	   end
	   2'b01: begin
	       red_sel  <= r2;
	       blue_sel <= r1;
	       green0_sel <= r0;
	       green1_sel <= r3;
	   end
	   2'b10: begin
	       red_sel  <= r0;
	       blue_sel <= r3;
	       green0_sel <= r1;
	       green1_sel <= r2;
	   end
	   default: begin
		   red_sel  <= r1;
		   blue_sel <= r2;
		   green0_sel <= r0;
		   green1_sel <= r3;
	   end

endcase

end

always @(posedge clk or negedge rst_n) begin

	if (rst_n == 1'b0) begin
		green0_sel_r <= 0;
		green1_sel_r <= 0;
		red_sel_r    <= 0;
		blue_sel_r   <= 0;
	end	else begin
		green0_sel_r <= green0_sel;
		green1_sel_r <= green1_sel;
		red_sel_r    <= red_sel;
		blue_sel_r   <= blue_sel;
	end

end


wire [PIXSIZE:0] green_sum = green0_sel_r + green1_sel_r;

wire [PIXSIZE-1:0] green_round = green_sum[PIXSIZE:1] + green_sum[0];

wire [3*PIXSIZE-1:0] pixel_data_int = { red_sel_r, green_round, blue_sel_r};

reg frame_valid_int2;
reg line_valid_int2;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        pixel_data_o     <= 0;
        frame_valid_o    <= 0;
        line_valid_o     <= 0;
        frame_valid_int2 <= 0;
        line_valid_int2  <= 0;
    end else begin
        pixel_data_o     <= pixel_data_int ;
        frame_valid_int2 <= frame_valid_int;
        line_valid_int2  <= line_valid_int;
        frame_valid_o    <= frame_valid_int2;
        line_valid_o     <= line_valid_int2;
    end
end


endmodule
