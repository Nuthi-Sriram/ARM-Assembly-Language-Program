	AREA dat, DATA, READONLY
data dcd 0x21,-0x45,0x67, -0x23
len dcd 4
	AREA dat, DATA, READWRITE
count dcd 0	 
	AREA pgm, CODE, READONLY
	ldr r0,=data
	ldr r1,=len
	ldr r2,[r1]
	ldr r4,=count
loop ldr r3,[r0],#4
	 tst r3,#0x80
	 addne r5,r5,#1
	 sub r2,r2,#1
	 cmp r2,#0
	 bne loop
	 str r5,[r4]
e b e

 end