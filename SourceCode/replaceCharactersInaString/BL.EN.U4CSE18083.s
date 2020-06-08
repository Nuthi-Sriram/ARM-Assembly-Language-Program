;Write an ARM assembly language program to replace character “a” from the string stored in location
;“string” and store the resultant string in location “destination”.	

	AREA dat, DATA, READONLY
string dcb "malayalam\0"
	AREA res, DATA, READWRITE
destination dcb ""

	AREA pgm, CODE, READONLY
	ldr r0, =string
	ldr r1, =destination
		 
loop ldrb r2,[r0], #1
	cmp r2,#"a"
	beq replace
	mov r5,r2
	strb r5, [r1], #1
	cmp r2, #"\0"
	bne loop

exit b exit

replace mov  r5,#"9"
	strb r5, [r1], #1
    cmp r2, #"\0"
	bne loop

e b e

	end 