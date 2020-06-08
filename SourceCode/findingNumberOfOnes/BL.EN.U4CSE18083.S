;Write an ARM assembly language program to find the number of 1's in a given 1 byte binary number stored
;in memory location “input”. Store the count in register R5.	
	AREA dat, DATA, READONLY
input dcd 0xC

	AREA pgm, CODE, READONLY
	ldr r0, =input
	mov r5, #0
	mov r6, #0
	ldr r1, [r0]
loop movs r1,r1, LSR #1
	ADDCS r5,#1
	cmp r1,#0
	bne loop

e b e

	end 