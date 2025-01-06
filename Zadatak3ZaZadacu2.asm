@i
M = 0;

@5
M = 0;

// for ( i = 0; i < 4; ++i)
(LOOP_START)

 // iz petlje izlazimo ako je i > 4 (i - 4 > 0)
	@i 
	D = M;
	@4
	D = D - A;
	@LOOP_END
	D; JGT
	
	@i 
	A = M;
	D = M;
	
	@NotPos
	D; JLE 
	
	@5
	D = M;
	
	@RAM5is0
	D; JEQ
	
	@i 
	A = M;
	D = M;
	
	@5
	D = D - M;
	
	@NotMin
	D; JGE
	
	@5 
	M = D;
	
(RAM5is0)
	@i 
	A = M;
	D = M;
	
	@5
	M = D;
	
(NotMin)
(NotPos)
	@i 
	M = M + 1;
	@LOOP_START 
	0; JMP
(LOOP_END)
	
(END)
@END
0; JMP