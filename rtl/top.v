module top(
    input wire clk_50m,
    input wire rst_btn,

    output wire NS_G,
    output wire NS_Y,
    output wire NS_R,

    output wire EW_G,
    output wire EW_Y,
    output wire EW_R
);

wire rst_n;
wire tick;

assign rst_n = ~rst_btn;

clk_en #(
    .CLK_HZ(50000000),
    .TICK_HZ(1)
)
u_clk_en
(
    .clk(clk_50m),
    .rst_n(rst_n),
    .tick(tick)
);

traffic_fsm u_fsm
(
    .clk(clk_50m),
    .rst_n(rst_n),
    .tick(tick),

    .ns_g(NS_G),
    .ns_y(NS_Y),
    .ns_r(NS_R),

    .ew_g(EW_G),
    .ew_y(EW_Y),
    .ew_r(EW_R)
);

endmodule