	AREA tst,DATA,READONLY
arr dcb "Amirta School of Engineering\0"
    AREA tst1,DATA,READWRITE
arr1 dcb 0x00
    AREA tst2,CODE,READONLY
    ldr r0,= arr;
    ldr r2,= arr1;
loop ldrb r1,[r0],#1;
    strb r1,[r2],#1; 
    cmp r1,#0;
    bne loop
e b e
    end