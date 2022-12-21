	AREA dc,DATA,READONLY
stra dcb "Amrita\0"
len dcb 0x7

 

    AREA vc,DATA,READWRITE
strc dcb 0x0

 

    AREA bc,CODE,READONLY
    ldr r0,=stra
    ldr r1,=len
    ldrb r1,[r1]
    ldr r2,=strc
    sub r6,r1,#1
    add r0,r0,r6
loop ldrb r3,[r0]
     strb r3,[r2]
     sub r0,r0,#1
     add r2,r2,#1
     sub r1,r1,#1
     cmp r1,#0
     bne loop 
     ldr r9,=stra
e b e
    END