;Write an ARM assembly language program to compare two strings stored in memory location “string”.
;Store 0x01 in registers R6, R7 or R8 for greater, smaller or equal respectively.

	AREA dat, DATA, READONLY
string dcb "ARM\0", "ARM\0"

	AREA pgm, CODE, READONLY
	ldr r0, =string
	ldr r1, =string
	mov r6, #0
	mov r7, #0
	mov r8, #0
	mov r3, #0
	mov r4, #0
	add r1,r1,#4	 
loop ldrb r2,[r0],#1
	add r3,r3,r2
	cmp r2, #"\0"
	bne loop

loop2 ldrb r5,[r1],#1
	add r4,r4,r5
	cmp r5,#"\0"
	bne loop2

	cmp r3,r4
	bgt loopgreaterthan
	blt looplesserthan
	beq loopequals

loopgreaterthan 
	mov r6,#0x01
exit1 b exit1

looplesserthan mov r7,#0x01
exit2 b exit2

loopequals mov r8, #0x01
exit3 b exit3

	end 