//Stimulus Module 
module stimulus;

wire [1:0] MAIN_SIG, SUB_SIG; 
reg VECH_AT_SUB_SIG;
  //if TRUE, indicates that there is vechile on the sub-road
reg CLOCK,CLEAR;
//Instantiate signal controller
  sig_control SC(MAIN_SIG, SUB_SIG,VECH_AT_SUB_SIG, CLOCK, CLEAR);
//Set up monitor
initial
  $monitor($time," Main Sig = %d | Sub road Sig =%d | Vechile at sub road = %d", MAIN_SIG, SUB_SIG, VECH_AT_SUB_SIG);

//Set up clock
initial
begin
CLOCK=`FALSE;
CLEAR=`FALSE;
forever #1.5 CLOCK=~CLOCK;
end

//apply stimulus
initial
begin
  $dumpfile("dump.vcd");
  $dumpvars(1);
VECH_AT_SUB_SIG = `FALSE;
repeat (2.5) @(negedge CLOCK); VECH_AT_SUB_SIG=`TRUE;
repeat (2) @ (negedge CLOCK); VECH_AT_SUB_SIG =`FALSE;
repeat (2.5) @ (negedge CLOCK); VECH_AT_SUB_SIG=`TRUE;
repeat (2) @ (negedge CLOCK); VECH_AT_SUB_SIG=`FALSE;
repeat (2.5) @ (negedge CLOCK); VECH_AT_SUB_SIG=`TRUE;
repeat (2) @ (negedge CLOCK); VECH_AT_SUB_SIG=`FALSE;
repeat (2.5) @ (posedge CLOCK); CLEAR=`TRUE;  
repeat (3) @ (negedge CLOCK); $stop;
end
endmodule