  area dc,data,readonly
a dcd 0x5,0x7
  area pgm,code,readonly
  ldr r0,=a
  mov r8,#2
loop ldr r1,[r0],#4
     b loop2
loop3
     sub r8,r8,#1
     cmp r8,#0
     bne loop
     b e
loop2 sub r1,r1,#5                    
      cmp r1,#0
      addeq r9,r9,#1
      bgt loop2
      ble loop3
e b e
      end