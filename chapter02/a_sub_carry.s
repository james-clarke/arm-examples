;
//
//
//  James Clarke
//  Oct 15, 2025
//
//
//  Perform 128-bit subtraction
//

.global   _main
.p2align  2



_main:

  // subtract one 64-bit number from another
  // assume overflow, must use carry flag

  //      number 1. 0x 0000000000000000 0000000000000000
  //      number 2. 0x 0000000000000000 0000000000000001


  MOV   X1,  #0x0000000000000000
  MOV   X2,  #0x0000000000000000
  MOV   X3,  #0x1111111111111111
  MOV   X4,  #0x0000000000000001

  SUBS  X5,   X4,   X2
  SBCS  X0,   X3,   X1


  MOV   X16,  #1
  SVC   0
  
