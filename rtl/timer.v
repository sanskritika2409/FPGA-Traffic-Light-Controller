module timer(
    input wire clk,
    input wire rst_n,
    input wire tick,
    input wire start,
    input wire [15:0] ticks_to_run,
    output reg busy
);

reg [15:0] cnt;

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        cnt  <= 0;
        busy <= 0;
    end
    else if(start)
    begin
        cnt  <= ticks_to_run;
        busy <= 1;
    end
    else if(busy && tick)
    begin
        if(cnt == 0)
            busy <= 0;
        else
            cnt <= cnt - 1;
    end
end

endmodule