;Program to count the number of characters in a string	
	AREA dat, DATA, READONLY
string dcb "Amrita\0"

	AREA pgm, CODE, READONLY
	ldr r0,=string
	mov r2,#0
loop ldrb r1,[r0], #1
	cmp r1,#"\0"
	addne r2,r2,#1
	bne loop

e b e
	end