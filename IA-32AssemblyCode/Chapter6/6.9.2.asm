TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:

INCLUDE Irvine32.inc

.data
	; insert data here
	intArray DWORD 10,60,20,33,72,89,45,65,72,18
	intSample DWORD 50
	arraySize = LENGTHOF intArray
	sum DWORD 0

.code
main PROC
	; insert code here
	mov esi, 0
	.WHILE esi < arraySize
		mov eax, intArray[esi*TYPE DWORD]
		.IF eax <= intSample
			mov ebx, sum
			add ebx, intArray[esi*TYPE DWORD]
			mov sum, ebx
		.ENDIF
		inc esi
	.ENDW
	mov eax, sum
	call WriteDec
	call Crlf

	exit
main ENDP

	; insert other subroutines here

END main
