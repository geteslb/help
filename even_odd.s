	AREA ml,DATA,READONLY
arr dcd 0x12,0x32,0x3,0x4
len dcd 0x4

	AREA lq,DATA,READWRITE
odd dcd 0x0
even dcd 0x0

	AREA la,CODE,READONLY
	ldr r0,=arr
	ldr r1,=len
	ldr r1,[r1]
	ldr r2,=odd
	ldr r3,=even
loop ldr r4,[r0],#4
	 and r4,r4,#1
	 cmp r4,#1
	 addeq r5,r5,#1
	 addne r6,r6,#1
	 sub r1,r1,#1
	 cmp r1,#0
	 bne loop
	 str r5,[r2]
	 str r6,[r3]
e b e
	END