// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

@R0
M=-1

@DRAW
0;JMP

(DRAW)
	@8191
	D=A
	@R1
	M=D

	(NEXT)
		// calculate position
		@R1
		D=M
		@pos
		M=D
		@SCREEN
		D=A
		@pos
		M=M+D

		// draw
		@R0
		D=M
		@pos
		A=M
		M=D

		// decrement
		@R1
		D=M-1
		M=D

		@NEXT
		D;JGE
	0;JMP
@LOOP
0;JMP
