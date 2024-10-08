`timescale 1ns / 1ps



module graycounter# (parameter N = 4)  
  
  ( input   clk,  
    input   rstn,  
    output reg [N-1:0] out);  
  
    reg [N-1:0] q;  
  
    always @ (posedge clk) begin  
        if (!rstn) begin  
        q <= 0;  
            out <= 0;  
      end else begin  
        q <= q + 1;  
`ifdef FOR_LOOP  
        for (int i = 0; i < N-1; i= i+1) begin  
        out[i] <= q[i+1] ^ q[i];  
        end  
        out[N-1] <= q[N-1];  
`else  
            out <= {q[N-1], q[N-1:1] ^ q[N-2:0]};  
`endif  
    end  
    end  
endmodule 

