;Program to add two numbers value1, value2 and store in the memory result.

	AREA dat, DATA, readonly
value1 dcd 0x3
	AREA dat1, DATA, readonly
value2 dcd 0x2
	AREA dat2, DATA, readwrite
result dcd 0x00

	AREA prog, code, readonly
	ldr r0, =value1
	ldr r1, =value2
	ldr r3, =result
	ldr r0, [r0]
	ldr r1, [r1]
	add r2,r0,r1
	str r2,[r3]

e b e
	end