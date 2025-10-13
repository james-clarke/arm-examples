;
//  a_exercises.s
//  
//
//  Created by James Clarke on 10/13/25.
//



.global     _main
.p2align    2

_main:
    
    // #1: compute 8bit two's comp of -79 and -23
    
    MOVN    W1,     #79
    ADD     W1,     W1,     #1
    
    MOVN    W2,     #23
    ADD     W2,     W2,     #1
    
    MOV     W0,     W2

