`timescale 1ns/1ps

module tb_traffic_light;

reg clk;
reg rst;

wire NS_G;
wire NS_Y;
wire NS_R;

wire EW_G;
wire EW_Y;
wire EW_R;

traffic_light_controller DUT(

.clk(clk),
.rst(rst),

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

    $dumpfile("traffic.vcd");
    $dumpvars(0,tb_traffic_light);

    clk = 0;
    rst = 1;

    #20;
    rst = 0;

    #400;

    $finish;

end

initial
begin

$monitor(
"Time=%0t NS[G=%b Y=%b R=%b] EW[G=%b Y=%b R=%b]",
$time,
NS_G,
NS_Y,
NS_R,
EW_G,
EW_Y,
EW_R
);

end

endmodule