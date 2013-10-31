
`timescale 1ns/100ps

module test_c499;
  //(clk, reset, go,in_addr, mem_in, io_in, mem_out, io_out,s1s0, adr_15to8, ad7_0, io_mbar, in_rd_wrbar, rd_bar, wr_bar,rdy, ALE, current_tstate);

//inputs as reg and o/ps as wires, inout as reg

reg clk,N1,N5,N9,N13,N17,N21,N25,N29,N33,N37,
      N41,N45,N49,N53,N57,N61,N65,N69,N73,N77,
      N81,N85,N89,N93,N97,N101,N105,N109,N113,N117,
      N121,N125,N129,N130,N131,N132,N133,N134,N135,N136,
      N137;


c499_clk_opFF  u1 (clk,N1,N5,N9,N13,N17,N21,N25,N29,N33,N37,
             N41,N45,N49,N53,N57,N61,N65,N69,N73,N77,
             N81,N85,N89,N93,N97,N101,N105,N109,N113,N117,
             N121,N125,N129,N130,N131,N132,N133,N134,N135,N136,
             N137,
	     Qout_N724,Qout_N725,Qout_N726,Qout_N727,Qout_N728,Qout_N729,Qout_N730,Qout_N731,Qout_N732,
             Qout_N733,Qout_N734,Qout_N735,Qout_N736,Qout_N737,Qout_N738,Qout_N739,Qout_N740,Qout_N741,Qout_N742,
             Qout_N743,Qout_N744,Qout_N745,Qout_N746,Qout_N747,Qout_N748,Qout_N749,Qout_N750,Qout_N751,Qout_N752,
             Qout_N753,Qout_N754,Qout_N755);
 
parameter period = 20; //20ns = clk period


//initialise all inputs to zero
initial
begin

clk = 0;
N1  = 0;
N5  = 0;
N9  = 0;
N13 = 0;
N17 = 0;
N21 = 0;
N25 = 0;
N29 = 0;
N33 = 0;
N37 = 0;
N41 = 0;
N45 = 0;
N49 = 0;
N53 = 0;
N57 = 0;
N61 = 0;
N65 = 0;
N69 = 0;
N73 = 0;
N77 = 0;
N81 = 0;
N85 = 0;
N89 = 0;
N93 = 0;
N97 = 0;
N101 = 0;
N105 = 0;
N109 = 0;
N113 = 0;
N117 = 0;
N121 = 0;
N125 = 0;
N129 = 0;
N130 = 0;
N131 = 0;
N132 = 0;
N133 = 0;
N134 = 0;
N135 = 0;
N136 = 0;
N137 = 0;

end
  


  always begin

 #(period/2) clk= ~clk; //1ns(timescale) * 100 = 100ns= half period
 
  end

always begin

 #(period*4)  N1 = ~N1; //invert after duration=period
 #period N5 = ~N5; //this delay will be wrt the previous time and not wrt time 0

 #(period*2) N21 = ~N21;
 #period N9 = ~N9;
 #(period*2) N17 = ~N17;
 #(period*2) N13 = ~N13;
  #period N25 = ~N25;
end


always begin

 #period N33 = ~N33;
 #period N29 = ~N29;
 #(period*2) N37 = ~N37;
end


always begin

  #(period*2) N45 = ~N45;
  #(period*2) N49 = ~N49;
#(period*2) N41 = ~N41;

 #(period*5) N53 = ~N53;
#period N57 = ~N57;
 #period N61 = ~N61;


end


always begin

 #(period*2)  N77 = ~N77; 
 #period N65 = ~N65;
#period N69 = ~N69;
 #(period*2)  N73 = ~N73;
 
end


always begin
  #period N89 = ~N89;
 #period N81 = ~N81;
 #(period*2)  N85 = ~N85;



end

always begin

  #(period*2)  N105 = ~N105;
  #period N101 = ~N101;
 #period N109 = ~N109;
#(period*3)  N93 = ~N93;
#period N97 = ~N97;


end

always begin

  #period N121 = ~N121;
 #period N125 = ~N125;
#(period*4)  N113 = ~N113;
 #period N117 = ~N117;
 #period N131 = ~N131;
 #(period*2)  N129 = ~N129;
 #period N130 = ~N130;
end

always begin

#period N136 = ~N136;
 #(period*2)  N137 = ~N137;
  #period N135 = ~N135;
 #period N132 = ~N132;
 #(period*2)  N133 = ~N133;
#period N134 = ~N134;


end

endmodule