TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc

.data
	; insert data here

.code
main PROC
	; insert code here
	mov ecx, 12
	mov eax, 1
	call DumpRegs
	dec eax
	mov ebx, 1
	L:
	add eax, ebx
	call DumpRegs
	xchg eax, ebx
	loop L

	exit
main ENDP

	; insert other subroutines here

END main
