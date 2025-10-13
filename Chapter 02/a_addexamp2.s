;
//  a_addexamp2.s
//  
//  Return ADD result in return code of program
//  Created by James Clarke on 10/13/25.
//



.global     _main
.p2align    2

_main:
    
    MOVN    W0,     #2
    ADD     W0,     W0,     #1


    // Call to exit program
    // here we do not set a return code, since we want to
    // preserve the result of the previous operation
    MOV     X16,    #1
    SVC     0
