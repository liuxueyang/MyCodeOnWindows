TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:

INCLUDE Irvine32.inc

.data
	; insert data here
	;intArray SWORD 2,0,0,0,1,20,35,-12,66,4,0
	;intArray SWORD 1,1,1,1,0
	;intArray SWORD 2,1,0,0
	intArray SWORD 3,2,1,0
	noneMsg BYTE "A zero value was not found",0

.code
main PROC
	; insert code here
	mov esi, 0
	mov ecx, LENGTHOF intArray
	L2:
	cmp intArray[esi], 0
	jz L1
	loopz L1
	add esi, TYPE SWORD
	cmp ecx, 0
	jz L3
	jnz L2
	L1:
	mov eax, esi
	call WriteInt
	jmp quit
	L3:
	mov edx, OFFSET noneMsg
	call WriteString
	jmp quit
	quit:
	call Crlf


	exit
main ENDP

	; insert other subroutines here

END main
