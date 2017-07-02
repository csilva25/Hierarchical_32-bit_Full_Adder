module adder_32b_tb();
	wire [31:0] sum;
	wire carry_out;
	reg [31:0] a, b;
	reg carry_in;
	integer error_count, i;

	adder_32b dut0 (.a(a), .b(b), .carry_in(carry_in), .sum(sum), .carry_out(carry_out));

	task perform_test;
	begin
		#10;
		if( {carry_out,sum} !== a+b+carry_in ) begin
			error_count = error_count + 1;
			$display("ERROR: Incorrect result for %h + %h with carry_in=%b. Expected %h and got %h.", a, b, carry_in, a+b+carry_in, {carry_out,sum});
		end
	end
	endtask

	initial begin
		a = 0;
		b = 0;
		carry_in = 0;
		error_count = 0;
		i = 0;
		
		$display("INFO: Performing predetermined input tests.");
		
		perform_test();
		
		a = 32'd1; b = 32'd6;
		perform_test();
		
		a = -32'd1; b = 32'd1;
		perform_test();
		
		a = 32'd0; b = -32'd1;
		carry_in = 1;
		perform_test();
		
		$display("INFO: Performing random input tests.");
		for( i = 0; i < 50; i = i + 1 ) begin
			{carry_in,a,b} = {$random,$random,$random};
			perform_test();
		end
		
		if( error_count != 0 ) begin
			$display("SUMMARY: %d total errors in simulation.", error_count);
		end
		else begin
			$display("SUMMARY: No errors detected in simulation.");
		end
		
		$display("SUMMARY: Simulation complete.");
		
		$stop;
	end
endmodule
