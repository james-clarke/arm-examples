;
//  a_exercises.s
//  
//
//  Created by James Clarke on 10/13/25.
//



.global     _main
.p2align    2

_main:
    

  // add two 192-bit numbers together



  // first number = 192/2 = 96bit number = 64+32 bit numbers
  //                                           X1               X2          W3
  // lets say it's the following:   1. 0x000000000000002 FFFFFFFFFFFFFFFF FFFFFFFF
  //                                           X4               X5          W6
  //                                2. 0x000000000000003 0000000000000000 00000001
  // Answer should be 6 -> returned in X0




  MOV   X1,   #0x0000000000000002
  MOV   X2,   #0xFFFFFFFFFFFFFFFF 
  MOV   X3,   #0xFFFFFFFF
 
  MOV   X4,   #0x0000000000000003
  MOV   X5,   #0xFFFFFFFFFFFFFFFF 
  MOV   X6,   #0xFFFFFFFF


  // start with add carry the 32-bit regs
  ADDS  X7,   X3,   X6
  // add 64-bit middle numbers next, making sure to look at carry flag
  ADCS  X8,   X2,   X3
  // add final 64-bit numbers
  ADC   X0,   X1,   X4


  // exit program with result in exit code
  MOV   X16,  #1 
  SVC   0

