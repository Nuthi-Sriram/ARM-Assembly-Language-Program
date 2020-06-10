	AREA dat, DATA, READONLY
src1 dcb 0xc0, 0x02, 0x3, 0x4
src2 dcb 0x40, 0x06, 0x07, 0x08 
n dcb 4
	AREA res, DATA, READWRITE
result dcb 0x00, 0x00, 0x00, 0x00
	AREA pgm, CODE, READONLY
	ldr r2, =result
	ldr r3, =src1
	ldr r4, =src2
	ldr r5, =n
	ldr r6, [r5]
	mov r8,#0
loop 
	ldrb r0,[r3],#1
	ldrb r1,[r4],#1
	add r0,r0, r8, LSR #8
	add r8,	r0,r1
	strb r8,[r2],#1
	sub r6,r6,#1
	cmp r6,#0
	bne loop
e b e
	end