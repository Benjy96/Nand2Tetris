// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Addition is adding x times
	//I.e., add R0 to itself R1 times

@R1
D=M
@timesToAdd
M=D

@iteration
M=1

(LOOP)
	//Add R0 to itself
	@R0
	D=M
	@R2
	M=M+D
	
	//If added required number of times, end program
	@timesToAdd
	D=M
	@iteration
	D=D-M
	@END
	D;JEQ

	//Else continue loop
	@iteration
	M=M+1
	@LOOP
	0;JMP

(END)
	@END
	0;JMP