// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

// check keyboard
(LOOP)
@KBD      // KBD address
D=M
@FILL
D;JNE       // if KBD != 0 jump to FILL
@CLEAR
0;JMP       // else go CLEAR

// -------------------------------------------------
// FILL: write -1 to screen (16384..24575 --> 8192 )

(FILL)
@SCREEN
D=A
@0
M=D         // R0 = SCREEN start address (16384)


@8192
D=A
@1
M=D         // R1 = 8192 (counter)


(FILL_LOOP)
@0
A=M
M=-1        // addr = -1 (black line)

@0
M=M+1      // addr + 1

@1
M=M-1      // counter - 1
D=M
@FILL_LOOP
D;JGT      // if counter > 0 --> FILL_LOOP

@LOOP
0;JMP

// -------------------------------------------------
// CLEAR: write 0 to screen (8192 words)
(CLEAR)

@SCREEN
D=A
@0
M=D         // R0 = SCREEN start address (16384)


@8192
D=A
@1
M=D         // R1 = 8192 (counter)


(CLEAR_LOOP)
@0
A=M
M=0        // addr = 0 (white)

@0
M=M+1      // addr + 1

@1
M=M-1      // counter - 1
D=M
@CLEAR_LOOP
D;JGT      // if counter > 0 --> CLEAR_LOOP

@LOOP
0;JMP