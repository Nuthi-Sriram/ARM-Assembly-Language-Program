;Write an ARM assembly language program to find Biggest from an array of numbers stored in location
;“array” and store the result in location “biggest”	
	
	
	AREA dat, DATA, READONLY
array dcd 0x1, 0x5, 0xA, 0x4
len dcd 4
	AREA res, DATA, READWRITE
biggest dcd 0x00
	AREA pgm, CODE, READONLY
	ldr r0, =array
	ldr r1, =biggest
	ldr r5, =len
	ldr r6,[r5]
loop ldr r2, [r0]
	ldr r3, [r1]
	cmp r2,r3			   ;1 0
	bgt loopassign
	add r0,r0,#4
	sub r6,r6,#1
	cmp r6,#0
	bne loop
et b et	
loopassign 
	str r2, [r1]
	add r0,r0,#4
	sub r6,r6,#1
	cmp r6,#0
	bne loop 

	
e b e
	end 