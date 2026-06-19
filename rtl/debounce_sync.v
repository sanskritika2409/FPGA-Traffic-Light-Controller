module debounce_sync #(
    parameter integer TICKS = 5
)(
    input wire clk,
    input wire rst_n,
    input wire tick,
    input wire async_in,
    output reg pulse,
    output reg level
);

reg s1,s2;
reg [7:0] db_cnt;
reg stable;

always @(posedge clk)
begin
    s1 <= async_in;
    s2 <= s1;
end

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        pulse  <= 0;
        level  <= 0;
        stable <= 0;
        db_cnt <= 0;
    end
    else
    begin
        pulse <= 0;

        if(tick)
        begin
            if(s2 != stable)
            begin
                db_cnt <= db_cnt + 1;

                if(db_cnt >= TICKS)
                begin
                    stable <= s2;
                    db_cnt <= 0;
                end
            end
            else
                db_cnt <= 0;

            if(stable && !level)
            begin
                level <= 1;
                pulse <= 1;
            end
            else if(!stable)
                level <= 0;
        end
    end
end

endmodule