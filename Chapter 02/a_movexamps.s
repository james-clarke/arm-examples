;
//  a_movexamps.s
//  
//  Examples of MOV instruction.
//  Created by James Clarke on 10/11/25.
//

.global _main
.align  2




_main:
    MOV     X2,     #0x6E3A
    MOVK    X2,     #0x4F5D,    LSL #16
    MOVK    X2,     #0xFEDC,    LSL #32
    MOVK    X2,     #0x1234,    LSL #48
    
    
    MOV     W1,     W2
    
    // this is the same as..
    // does not work with macos assembler
;    MOV     X1,     X2,         LSL #1
;    MOV     X1,     X2,         LSR #1
;    MOV     X1,     X2,         ASR #1
;    MOV     X1,     X2,         ROR #1

    // this right here! using.... mnemonics!
    LSL     X1,     X2,         #1
    LSR     X1,     X2,         #1
    ASR     X1,     X2,         #1
    ROR     X1,     X2,         #1


    // this will work with an 8bit-immediate integer
    MOV     X1,     #0xAB000000
    
    
    
    // lets use MOVN
    MOVN    X1,     #45
    
    
    // call exit
    MOV     X0,     #0      // return code of 0
    MOV     X16,    #1      // macos exit syscall
    SVC     0
