////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP04 = Bayer to RGB Conversion
// Module Name:    debayer_ip_mode1 = Mode 1 debayer method
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This module implements the mode 1
//
// Dependencies:
//   (no dependency)
//
// Revision:
//    1.0
////////////////////////////////////////////////////////////////////////////////


module debayer_ip_mode1  (
    clk           ,
    rst_n         ,

    c_en          ,
    c_rows        ,
    c_cols        ,
    c_bayer_mode  ,
    c_opwire      ,
 
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

    waddr2        ,
    we2           ,
    din2          ,
    raddr2        ,


    dout0         ,
    dout1         ,
    dout2         ,

    frame_valid_o ,
    line_valid_o  ,
    pixel_data_o  ,

    frame_start_o ,
    line_start_o  

);

`define INTERPOLATION
`define NOINTERPOLATION

parameter PIXSIZE = 16; 
parameter ROW_W = 13;
parameter COL_W = 14;

input   clk ;
input   rst_n ;

input   c_en ;
input   [ROW_W:0] c_rows ;
input   [COL_W:0] c_cols ;
input   [1:0] c_bayer_mode  ;
input   c_opwire;

input   frame_valid ;
input   line_valid ;
input   [PIXSIZE-1:0] pixel_data ;


output  [COL_W-1:0] waddr0 ;
output  we0 ;
output  [PIXSIZE-1:0] din0 ;
output  [COL_W-1:0] raddr0 ;

output  [COL_W-1:0] waddr1 ;
output  we1 ;
output  [PIXSIZE-1:0] din1 ;
output  [COL_W-1:0] raddr1 ;

output  [COL_W-1:0] waddr2 ;
output  we2 ;
output  [PIXSIZE-1:0] din2 ;
output  [COL_W-1:0] raddr2 ;


input   [PIXSIZE-1:0] dout0 ;
input   [PIXSIZE-1:0] dout1 ;
input   [PIXSIZE-1:0] dout2 ;

output frame_valid_o ;
output line_valid_o ;
output [3*PIXSIZE-1:0] pixel_data_o ;

output frame_start_o ;
output line_start_o ;


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

reg data_valid_r;

reg frame_start_r, line_start_r;

wire first_row = (row_cnt==0);
wire first_col = (col_cnt==0);

reg read_en;

reg [4:0] read_en_r;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        read_en_r       <= 0;
    end else begin
        read_en_r  <= {read_en_r[3:0], read_en };
    end
end

reg [COL_W:0] raddr_r;
wire [1:0] read_sel;
reg final_read;
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        row_cnt       <= 0;
        col_cnt       <= 0;
        frame_start_r <= 0;
        line_start_r  <= 0;
        read_en       <= 0;
        // read_sel      <= 0;
    end else begin
        frame_start_r <= 0;
        line_start_r <= 0;
        if (~c_en) begin
            row_cnt <= 0;
            col_cnt <= 0;
        end else begin
            read_en <= 0;
            if (data_valid) begin
                
                //if (row_cnt[0])  begin
                    read_en <= 1;
                    // read_sel <= row_cnt[1:0];
                //end
                
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
                
                if (~frame_valid_o & first_row & first_col)
                    frame_start_r <= 1;
                if (first_col)
                    line_start_r <= 1;
            end else begin
                if (final_read)
                    read_en <= 1;
            end
        end
    end
end

reg wen0,wen1,wen2,wen3;
reg [COL_W-1:0] waddr_r;
reg [PIXSIZE-1:0] din_r;


reg [2:0] wen_r;


always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin

        wen0 <= 0;
        wen1 <= 0;
        wen2 <= 0;

        waddr_r <= 0;
        din_r <= 0;
        
        wen_r <= 3'b001;
        data_valid_r <= 0;
        
    end else begin
        
        data_valid_r <= data_valid;
        
        wen0 <= 0;
        wen1 <= 0;
        wen2 <= 0;

        if (data_valid) begin
            if (row_cnt[1:0] == 2'b00) wen0 <= 1'b1;
            if (row_cnt[1:0] == 2'b01) wen1 <= 1'b1;
            if (row_cnt[1:0] == 2'b10) wen2 <= 1'b1;

            waddr_r <= col_cnt;
            din_r <= pixel_data;
        end 
        
        if (data_valid) begin
          if (waddr_r == c_cols_r)
            wen_r <= {  wen_r[1:0], wen_r[2] };
        end 


        
    end
end

assign waddr0 = waddr_r;
assign waddr1 = waddr_r;
assign waddr2 = waddr_r;

assign din0   = din_r;
assign din1   = din_r;
assign din2   = din_r;

//assign we0  = wen0;
//assign we1  = wen1;
//assign we2  = wen2;
//assign we3  = wen3;

assign we0  = wen_r[0] & data_valid_r;
assign we1  = wen_r[1] & data_valid_r;
assign we2  = wen_r[2] & data_valid_r;



reg [ROW_W:0] read_row_cnt;


reg [PIXSIZE-1:0] r0,r1,r2,r3,r4,r5,r6,r7,r8; // nine pixels
reg line_valid_o_0;
reg frame_valid_o;

wire final_pix_in = (row_cnt == c_rows_r) && (col_cnt == c_cols_r);

wire push_stop;

reg [1:0] read_pos;


always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        raddr_r       <= 0;
        read_pos      <= 0;
        read_row_cnt  <= 0;
        line_valid_o_0  <= 0;
        r0            <= 0;
        r1            <= 0;
        r2            <= 0;
        r3            <= 0;
        r4            <= 0;
        r5            <= 0;
        r6            <= 0;
        r7            <= 0;
        r8            <= 0;
        final_read    <= 0;
    end else begin
        
        if (~c_en | push_stop)
            final_read    <= 0;
        else begin
            if (final_pix_in) 
                final_read    <= 1;
        end
                
        line_valid_o_0 <= 0;

        if (read_en_r[1] ) begin
            
            r2 <= r1;
            r1 <= r0;

            r5 <= r4;
            r4 <= r3;

            r8 <= r7;
            r7 <= r6;
            
           
            case (read_sel)

            2'b00 : begin
                r0 <= dout0;
                r3 <= dout1;
                r6 <= dout2;
            end

            2'b01 : begin
                r0 <= dout1;
                r3 <= dout2;
                r6 <= dout0;
            end

            2'b10 : begin
                r0 <= dout2;
                r3 <= dout0;
                r6 <= dout1;
            end

            default : begin
                r0 <= dout0;
                r3 <= dout1;
                r6 <= dout2;
            end

            endcase
            

        end
            
        if (read_en_r[1] & ~line_valid_o_0) begin

            if (~raddr_r[0]) begin
                line_valid_o_0 <= 1;
            end

        end

        if (read_en_r[0] | final_read) begin

            if (raddr_r == c_cols_r) begin
                raddr_r <= 0;
            end else begin
                raddr_r <= raddr_r+1;
            end

            if (raddr_r == 0) begin
                read_row_cnt <= #1 read_row_cnt + 1;
                //if (read_row_cnt < (c_rows_r+2)) begin
                  if (read_pos == 2'b10)
                    read_pos <= 0;
                  else
                    read_pos <= #1 read_pos + 1;
                //end
            end 


        end 
        
       
        

    end
end

assign frame_start_o = frame_start_r;
assign line_start_o  = line_start_r;

assign raddr0 = raddr_r;
assign raddr1 = raddr_r;
assign raddr2 = raddr_r;


// count rows and columns
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        rows_out <= 0;
        cols_out <= 0;
        frame_valid_o <= 0;
    end else begin
        if (frame_start_r)
            frame_valid_o <= 1;

        if (frame_valid_o & line_valid_o) begin

            // cols_out <= ({cols_out,1'b1} == c_cols_r) ? 0 : cols_out + 1;
            cols_out <= (cols_out == c_cols_r) ? 0 : cols_out + 1;
            
            // if ({cols_out,1'b1} == c_cols_r) begin
            if (cols_out == c_cols_r) begin
                //rows_out <= ({rows_out,1'b1} == c_rows_r) ? 0 : rows_out + 1;
                rows_out <= (rows_out == c_rows_r) ? 0 : rows_out + 1;
            end
            
            // if (({cols_out,1'b1} == c_cols_r) && ({rows_out,1'b1} == c_rows_r))
            if ((cols_out == c_cols_r) && (rows_out == c_rows_r))
                frame_valid_o <= 0;

        end
    end
end

reg push;
reg push_start, push_count_en;
reg [ROW_W:0] push_row;
reg [COL_W:0] push_col;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        push        <= 0;
        push_start  <= 0;
        push_row    <= 0;
        push_col    <= 0;
        push_count_en <= 0;
    end else begin
        push_start <= 0;
        push <= 0;

        if (push_count_en)
            push <= read_en_r[0]; // was 1
        
        if (data_valid) begin
            if ((row_cnt == 1) && (col_cnt >= 2))
                push_start <= 1; 
        end else begin
            if (final_read)
                push<=1;
        end


        if (push_start) begin
            push_count_en <= 1;
        end 
        
        if (push_stop == 1) begin
            push_count_en <= 0;
            push <= 0;
        end 

        if (push) begin
            //if (data_valid) begin
                push_col <= (push_col == c_cols_r) ? 0 : push_col + 1;
                if ( push_col == c_cols_r ) begin
                    push_row <= (push_row == c_rows_r) ? 0 : push_row + 1;
                end
            // end
        end

    end
end

assign push_stop = ((push_row == c_rows_r)&&(push_col == c_cols_r));
assign read_sel  = (read_row_cnt<3) ? 0 : read_pos;


wire [PIXSIZE-1:0] red, green, blue;

wire [PIXSIZE-1:0] red1, green1, blue1;

wire [PIXSIZE-1:0] red2, green2, blue2;

`ifdef INTERPOLATION

defparam U_bayer2rgb_proc.PIXSIZE = PIXSIZE;
defparam U_bayer2rgb_proc.ROW_W   = ROW_W  ;
defparam U_bayer2rgb_proc.COL_W   = COL_W  ;

bayer2rgb_proc U_bayer2rgb_proc (
    .row       ( push_row  ),
    .col       ( push_col  ),

    .c_rows_r  ( c_rows_r  ),
    .c_cols_r  ( c_cols_r  ),
    .c_bayer_mode ( c_bayer_mode ),

    .r0        ( r0        ),
    .r1        ( r1        ),
    .r2        ( r2        ),

    .r3        ( r3        ),
    .r4        ( r4        ),
    .r5        ( r5        ),

    .r6        ( r6        ),
    .r7        ( r7        ),
    .r8        ( r8        ),

    .red       ( red1      ),
    .green     ( green1    ),
    .blue      ( blue1     )
   
);

`else

assign red1   = 0;
assign green1 = 0;
assign blue1  = 0;

`endif

`ifdef NOINTERPOLATION

defparam U_bayer2rgb_proc2.PIXSIZE = PIXSIZE;
defparam U_bayer2rgb_proc2.ROW_W   = ROW_W  ;
defparam U_bayer2rgb_proc2.COL_W   = COL_W  ;

bayer2rgb_proc2 U_bayer2rgb_proc2 (
    .row       ( push_row  ),
    .col       ( push_col  ),

    .c_rows_r  ( c_rows_r  ),
    .c_cols_r  ( c_cols_r  ),
    .c_bayer_mode ( c_bayer_mode ),

    .r0        ( r0        ),
    .r1        ( r1        ),
    .r2        ( r2        ),

    .r3        ( r3        ),
    .r4        ( r4        ),
    .r5        ( r5        ),

    .r6        ( r6        ),
    .r7        ( r7        ),
    .r8        ( r8        ),

    .red       ( red2      ),
    .green     ( green2    ),
    .blue      ( blue2     )
   
);
`else

assign red2   = 0;
assign green2 = 0;
assign blue2  = 0;

`endif


assign red   = (c_opwire == 1'b0) ? red1   : red2;
assign green = (c_opwire == 1'b0) ? green1 : green2;
assign blue  = (c_opwire == 1'b0) ? blue1  : blue2;


assign pixel_data_o[ 3*PIXSIZE - 1 : 2*PIXSIZE] = (c_bayer_mode[1]) ? blue : red;
assign pixel_data_o[ 2*PIXSIZE - 1 :   PIXSIZE] = green;
assign pixel_data_o[   PIXSIZE - 1 :         0] = (c_bayer_mode[1]) ? red : blue;

assign line_valid_o = push;


endmodule

