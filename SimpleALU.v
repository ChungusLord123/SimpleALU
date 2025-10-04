module ALU (input[7:0] a, reg [7:0] b, reg [1:0] op, reg [8:0] y)
always @(*) begin
    case(op) 
        2'b00: y = a + b;
        2'b01: y = a - b;
        2'b10: y = a < b ? 9'b1 : 9'b0;
        2'b11: y = a == b ? 9'b1 : 9'b0;
        default: y = 9'b0;
    endcase
end
endmodule