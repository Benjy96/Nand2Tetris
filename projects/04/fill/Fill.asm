//could just iterate around constantly, and each loop detect keyboard, and depending on that,
//set next register white or black

//Store number of registers that can be filled
@8192
D=A
@numScreenRegisters	
M=D	

@iteration
M=0

(LOOP)
	//If reached end of screen, reset loop position
	@numScreenRegisters
	D=M
	@iteration
	D=D-M
	@RESET_LOOP
	D;JEQ	

	//Set black if key pressed, else set white
	@KBD
	D=M
	@SET_BLACK
	D;JGT
	@SET_WHITE
	0;JMP

(SET_BLACK)
	@SCREEN
	D=A
	@iteration
	D=D+M		
	A=D		//set register position
	M=-1
			
	@iteration	
	M=M+1
	D=M

	@LOOP
	0;JMP

(SET_WHITE)
	@SCREEN
	D=A
	@iteration
	D=D+M
	A=D		//set register position
	M=0
			
	@iteration	
	M=M+1
	D=M

	@LOOP
	0;JMP

(RESET_LOOP)
	@iteration
	M=0
	
	//Return to loop
	@LOOP
	0;JMP