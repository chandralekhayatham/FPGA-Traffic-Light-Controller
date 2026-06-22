module traffic_light_controller(

input clk,
input rst,

output reg NS_G,
output reg NS_Y,
output reg NS_R,

output reg EW_G,
output reg EW_Y,
output reg EW_R

);

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

reg [1:0] state;
reg [4:0] timer;

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin
        state <= S0;
        timer <= 0;
    end

    else
    begin

        timer <= timer + 1;

        case(state)

        S0:
        begin
            if(timer == 10)
            begin
                state <= S1;
                timer <= 0;
            end
        end

        S1:
        begin
            if(timer == 3)
            begin
                state <= S2;
                timer <= 0;
            end
        end

        S2:
        begin
            if(timer == 10)
            begin
                state <= S3;
                timer <= 0;
            end
        end

        S3:
        begin
            if(timer == 3)
            begin
                state <= S0;
                timer <= 0;
            end
        end

        default:
        begin
            state <= S0;
            timer <= 0;
        end

        endcase

    end

end

always @(*)
begin

    NS_G = 0;
    NS_Y = 0;
    NS_R = 0;

    EW_G = 0;
    EW_Y = 0;
    EW_R = 0;

    case(state)

    S0:
    begin
        NS_G = 1;
        EW_R = 1;
    end

    S1:
    begin
        NS_Y = 1;
        EW_R = 1;
    end

    S2:
    begin
        NS_R = 1;
        EW_G = 1;
    end

    S3:
    begin
        NS_R = 1;
        EW_Y = 1;
    end

    endcase

end

endmodule