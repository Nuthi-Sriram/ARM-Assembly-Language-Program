	AREA dat1, DATA, readonly
source dcd 0xABCD

	AREA dat2, DATA, readwrite
dest dcd 0x00

	AREA pgm,code, readonly
	ldr r0, =source
	ldr r1, =dest
	ldr r2, [r0]
	str r2, [r1]
e b e
	end