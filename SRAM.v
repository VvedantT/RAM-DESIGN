module ram(
input clk,
input write_enable,
input [3:0]address,
input [3:0]data_in,
output reg [3:0]data_out
);
reg [3:0]ram_blk[15:0];
always @(posedge clk)begin
    if (write_enable)
        ram_blk[address]<=data_in;
    else
        data_out<=ram_blk[address];
end
endmodule
