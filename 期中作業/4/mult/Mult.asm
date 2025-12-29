// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

//def multiply(a, b):
//    result = 0
//    counter = b

//    while counter > 0:
//        result += a
//        counter -= 1

//    return result



@2	//Anser
M=0	//ZERO ANS

@0
D=M
@END
D;JEQ	//if R0 == 0 --> END

@1
D=M
@END
D;JEQ	//if R1 == 0 --> END


// R3 = R1 (counter)
@1
D=M
@3
M=D


(LOOP)
// R2 = R2 + R0
@0
D=M
@2
M=M+D

// counter - 1
@3
M=M-1

// if counter > 0, continue loop
D=M
@LOOP
D;JGT

(END)
@END
0;JMP