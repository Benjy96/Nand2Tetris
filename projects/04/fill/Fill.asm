@8192
D=A
@numScreenRegisters	//Number of draw loop iterations required
M=D		

(SCAN_LOOP)
	@KBD
	D=M

	//TODO here: Loop to set white if not pressed

	//if keyboard not pressed, scan again, else continue to draw loop and fill screen 
	@SCAN_LOOP
	D;JEQ	

	//If already drawing, skip initialisation of loop counters
	@iteration
	D=M
	@numScreenRegisters
	D=M-D		//D = numScreenRegisters - iteration
	@DRAW_LOOP	
	D;JGT		

	@iteration
	M=0			

	(DRAW_LOOP)
		//Multiply 16, "current iteration" many times
		@registerIncrement
		M=0
		@timesRegisterIncremented
		M=0
		(INCREMENT_REGISTER)
			//If iteration == 0, skip loop
			@iteration
			D=M
			@SET_SCREEN
			D;JEQ

			//Or if iteration == times to set, skip loop
			@timesRegisterIncremented
			D=M
			@iteration
			D=M-D
			@SET_SCREEN
			D;JEQ

			//Else, set register position += 1
			@1
			D=A
			@registerIncrement
			M=M+D

			//Count num times incremented register and continue
			@timesRegisterIncremented
			M=M+1
			@INCREMENT_REGISTER
			0;JMP
		
		(SET_SCREEN)
			//Set current register to all black
			@SCREEN
			D=A
			@registerIncrement
			D=D+M
			A=D
			M=-1
			
			@iteration	
			M=M+1
			D=M

			//Scan again
			@SCAN_LOOP
			0;JMP