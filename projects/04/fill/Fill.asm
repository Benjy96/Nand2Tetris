// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
//

//Pseudocode to turn the screen black when a key is pressed on the keyboard:

//Loop
//	Set addr = Keyboard Register
//	If Register != 0:
//		iterations = 0
//		Loop while (addr of screen register MAX) > iterations:
//			set current screen register to 1
//			count++
//

(SCAN_LOOP)
	@KBD
	D=M
	@SCAN_LOOP
	D;JEQ		//if D==0, scan again, else continue to draw loop and fill screen 

	(DRAW_LOOP)	//TODO: Implement.
		@SCAN_LOOP
		0;JMP	//Loops back to the start to prevent infinite continued execution
		





