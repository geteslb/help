  AREA tst,DATA,READONLY
arr dcb "i School of Engineering"

    AREA tst2,CODE,READONLY
    ldr r0,= arr;


loop ldrb r1,[r0],#1;

    cmp r1,#0;
    addne r2,r2,#1

 

    bne loop


e b e

    end