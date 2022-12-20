    AREA data,DATA,READONLY
arr1 dcd 0x1,0x2,0x3
arr2 dcd 0x4,0x5,0x6
    AREA data1,DATA,READWRITE
sum dcd 0x0,0x0,0x0
    AREA code,CODE,READONLY
    ldr r0,=arr1
    ldr r1,=arr2
    ldr r2,=sum
    mov r6,#3
loop ldr r3,[r0],#4
    ldr r4,[r1],#4
    add r5,r3,r4
    sub r6,r6,#1
    str r5,[r2]
    cmp r6,#0
    bne loop
e b e
    END