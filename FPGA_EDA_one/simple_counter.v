module simple_counter(                                //模块定义
	CLOCK_50,
	counter_out
);
input CLOCK_50;                                       //输入时钟
output[31:0]counter_out;                              //输出引脚
reg [31:0]counter_out;                 
always @ (posedge CLOCK_50)                   			//上升沿有效
begin
counter_out<=#1 counter_out+1;              				//计数器功能实现
end
endmodule
