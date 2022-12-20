    AREA d, DATA,READONLY
st dcb "Amritanitin\0"
    AREA Dq,DATA,READONLY
st1 dcb "Amritamutin\0"
    AREA Dw,CODE,READONLY
    ldr r0,=st
    ldr r1,=st1
loop 
    ldrb r2,[r0],#1
    ldrb r3,[r1],#1
    cmp r2,r3
    bne    next;
    addeq r4,r4,#1
    cmp r2,#0
    cmp r3,#0
    bne loop;
next
e b e
    end