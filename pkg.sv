package pkg_a;
	class packet_a;
		int pkg_a;
	endclass
	typedef struct{
		int data;
		int	command;
	} struct_a;
	int	va=1;
endpackage

package pkg_b;
	class packet_b;
		int pkg_b;
	endclass
	typedef struct{
		int data;
		int	[1:0]command;
	} struct_b;
	int vb=2;
endpackage

module	mod_a;
endmodule

module  mod_b;
endmodule


module tb;
	class packet_tb;
	endclass
	typedef struct{
		int data;
		int	command;
	} struct_tb;

mod_a ma();
mod_b mb();


//import	pkg_a::packet_a;
//import	pkg_b::packet_b;
//import	pkg_a::va;
//import	pkg_b::vb;

import	pkg_a::*;
import	pkg_b::*;

	
	initial begin
		packet_a 	pa = new();
		packet_b 	pb = new();	
		packet_tb 	ptb = new();
		$display("pkg_a::va = %0d, pkg_b::vb = %0d",va,vb);
	end
endmodule
