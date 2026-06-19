module traffic_fsm(
    input wire clk,
    input wire rst_n,
    input wire tick,

    output reg ns_g,
    output reg ns_y,
    output reg ns_r,

    output reg ew_g,
    output reg ew_y,
    output reg ew_r
);

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

reg [1:0] state;
reg [4:0] timer;

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        state <= S0;
        timer <= 0;
    end
    else if(tick)
    begin
        timer <= timer + 1;

        case(state)

            S0:
                if(timer == 12)
                begin
                    state <= S1;
                    timer <= 0;
                end

            S1:
                if(timer == 3)
                begin
                    state <= S2;
                    timer <= 0;
                end

            S2:
                if(timer == 12)
                begin
                    state <= S3;
                    timer <= 0;
                end

            S3:
                if(timer == 3)
                begin
                    state <= S0;
                    timer <= 0;
                end

        endcase
    end
end

always @(*)
begin

    ns_g = 0;
    ns_y = 0;
    ns_r = 0;

    ew_g = 0;
    ew_y = 0;
    ew_r = 0;

    case(state)

        S0:
        begin
            ns_g = 1;
            ew_r = 1;
        end

        S1:
        begin
            ns_y = 1;
            ew_r = 1;
        end

        S2:
        begin
            ns_r = 1;
            ew_g = 1;
        end

        S3:
        begin
            ns_r = 1;
            ew_y = 1;
        end

    endcase

end

endmodule