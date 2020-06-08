	AREA dat, DATA, READONLY
n dcd 0x23, 0xDA, 0x44, 0x5A
len dcd 4 
	AREA res, DATA, READWRITE
result dcd 0x00
src1 dcd 0x00
src2 dcd 0x00
	AREA pgm, CODE, READONLY
	ldr r0, =n
	ldr r1, =len
	ldr r2, =result
	ldr r3, =src1
	ldr r4, =src2
	ldr r1,[r1]
loop ldr r3, [r0]
	add r0,r0,#4
	ldr r4, [r0]
	add r6,r3,r4
	add r7, r7, r6
	str r7,[r2]
	add r0,r0,#4
	sub r1,r1,#2
	cmp r1,#0
	bne loop
e b e
	end