`timescale 1ns/1ps

module traffic_tb;

reg clk;
reg rst_btn;

wire NS_G;
wire NS_Y;
wire NS_R;

wire EW_G;
wire EW_Y;
wire EW_R;

top DUT(
    .clk_50m(clk),
    .rst_btn(rst_btn),

    .NS_G(NS_G),
    .NS_Y(NS_Y),
    .NS_R(NS_R),

    .EW_G(EW_G),
    .EW_Y(EW_Y),
    .EW_R(EW_R)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst_btn = 1;

    #100;
    rst_btn = 0;

    #5000;

    $finish;
end

initial
begin
    $dumpfile("traffic.vcd");
    $dumpvars(0,traffic_tb);
end

always @(posedge clk)
begin
    if(NS_G && EW_G)
    begin
        $display("ERROR : Both directions green");
        $finish;
    end
end

endmodule