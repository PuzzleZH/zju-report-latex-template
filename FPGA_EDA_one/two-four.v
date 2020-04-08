module Design_Code(
input  d0,d1,d2,d3,  //四路输入
input [1:0] select,		  //两路选择信号
output reg  out
);
always @(*) 					//有任何改变都要执行
	begin
		case(select)			//选择语句
		2'b00:out=d0;			
		2'b01:out=d1;
		2'b10:out=d2;
		2'b11:out=d3;
		default:out=1'b1;
		endcase
	end
endmodule
