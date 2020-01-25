`define DELAY 20

module ALU_32bit_testbench;
   reg [31:0] a;
   reg [31:0] b;
   reg [2:0] ALU_op;
   reg carry_in;
   reg less;
   wire carry_out;
   wire [31:0] result;
   
	ALU_32bit  alu0 (a, b, ALU_op, carry_in, less, carry_out, result);

	initial begin
		// OPCODE: 000 AND
		a = 32'b00000000000000000000000000000000; b = 32'b00000000000000000000000000000000; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b000;
		#`DELAY;
		a = 32'b00000000000000000000000000000000; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b000;
		#`DELAY;
		a = 32'b11111111111111111111111111111111; b = 32'b00000000000000000000000000000000; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b000;
		#`DELAY;
		a = 32'b11111111111111111111111111111111; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b000;
		#`DELAY;
		
		// OPCODE: 001 OR
		a = 32'b00000000000000000000000000000000; b = 32'b00000000000000000000000000000000; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b001;
		#`DELAY;
		a = 32'b00000000000000000000000000000000; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b001;
		#`DELAY;
		a = 32'b11111111111111111111111111111111; b = 32'b00000000000000000000000000000000; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b001;
		#`DELAY;
		a = 32'b11111111111111111111111111111111; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b001;
		#`DELAY;
		
		// OPCODE: 010 ADD
		a = 32'b00000000000000000000000000000000; b = 32'b00000000000000000000000000000000; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 32'b01111111111111110000000000000000; b = 32'b00000000000000001111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 32'b00000000000000000000000000000000; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 32'b11111111111111111111111111111111; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 32'b00000000000000000000000000000000; b = 32'b00000000000000000000000000000000; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 32'b10101010101010101010101010101010; b = 32'b01010101010101010101010101010101; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 32'b00000000000000000000000000000000; b = 32'b11111111111111111111111111111111; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 32'b11111111111111111111111111111111; b = 32'b11111111111111111111111111111111; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		
		// OPCODE: 011 SUBSTRACT
		a = 32'b00000000000000000000000000000000; b = 32'b00000000000000000000000000000000; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b011;
		#`DELAY;
		a = 32'b01111111111111110000000000000000; b = 32'b00000000000000001111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b011;
		#`DELAY
		a = 32'b00000000000000000000000000000000; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b011;
		#`DELAY
		a = 32'b11111111111111111111111111111111; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b011;
		#`DELAY
		a = 32'b00000000000000000000000000000000; b = 32'b00000000000000000000000000000000; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b011;
		#`DELAY
		a = 32'b10101010101010101010101010101010; b = 32'b01010101010101010101010101010101; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b011;
		#`DELAY
		a = 32'b00000000000000000000000000000000; b = 32'b11111111111111111111111111111111; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b011;
		#`DELAY
		a = 32'b11111111111111111111111111111111; b = 32'b11111111111111111111111111111111; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b011;
		#`DELAY;
		
		// OPCODE: 111 SET ON LESS THAN
		a = 32'b00000000000000000000000000000000; b = 32'b00000000000000000000000000000000; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b111;
		#`DELAY;
		a = 32'b01111111111111110000000000000000; b = 32'b00000000000000001111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b111;
		#`DELAY
		a = 32'b00000000000000000000000000000000; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b111;
		#`DELAY
		a = 32'b11111111111111111111111111111111; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b111;
		#`DELAY
		a = 32'b00000000000000000000000000000000; b = 32'b00000000000000000000000000000000; carry_in = 1'b0; less = 1'b1; ALU_op = 3'b111;
		#`DELAY
		a = 32'b10101010101010101010101010101010; b = 32'b01010101010101010101010101010101; carry_in = 1'b0; less = 1'b1; ALU_op = 3'b111;
		#`DELAY
		a = 32'b00000000000000000000000000000000; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b1; ALU_op = 3'b111;
		#`DELAY
		a = 32'b11111111111111111111111111111111; b = 32'b11111111111111111111111111111111; carry_in = 1'b0; less = 1'b1; ALU_op = 3'b111;
		#`DELAY;
	end
	 
	initial begin
		$monitor("time = %2d, a =%32b, b=%32b, carry_in =%1b, less=%1b, ALU_op =%3b, carry_out =%1b, result=%32b", $time, a, b, carry_in, less, ALU_op, carry_out, result);
	end 
endmodule