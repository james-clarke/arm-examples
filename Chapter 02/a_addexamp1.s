;
//  a_addexamp1.s
//  
//
//  Created by James Clarke on 10/13/25.
//


.global _main
.p2align  2


_main:
    ADD     X2,     X1,     #4000
    ADD     X2,     X1,     #0x20,  LSL 12
    ADD     X2,     X1,     X0
    
    // X2 = X1 + (X0 * 4)... since we shift left by 2 = 2^2
    ADD     X2,     X1,     X0,     LSL 2
    
    
    MOV     X0,     #0
    MOV     X16,    #1
    SVC     0
