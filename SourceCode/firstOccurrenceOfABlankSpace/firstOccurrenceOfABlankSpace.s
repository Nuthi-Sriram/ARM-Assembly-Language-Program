;Program to find the first occurence of occurrence of a blank space in a string 	
	AREA dat, DATA, READONLY
string dcb "Amrit\0"
	AREA pgm, CODE, READONLY
	ldr r0,=string
	mov r2,#0
loop ldrb r1,[r0], #1
	 cmp r1,#" "
	 beq store
	 cmp r1,#"\0"
	 addne r2,r2,#1	
	 bne loop

ex b ex
store mov r5,r2

e b e
	end
