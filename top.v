module top (
    input [1:0]       i_a,   //the input to the ALU
    input [1:0]       i_select, //the select to the ALU 
    output [3:0]      o_result // the result of the ALU 
);

wire [2:0] adder_sub_out ;
wire [3:0] multiplier_out;

c_addsub_0 ADDER(
  .A(i_a),      // input wire [1 : 0] A
  .ADD(i_select[0]),  // input wire ADD
  .S(adder_sub_out)      // output wire [2 : 0] S
);

mult_gen_0 multiplier (
  .A(i_a),  // input wire [1 : 0] A
  .P(multiplier_out)  // output wire [3 : 0] P
);

assign o_result = i_select[0] ? {1'b0,adder_sub_out} : multiplier_out ;

    
endmodule