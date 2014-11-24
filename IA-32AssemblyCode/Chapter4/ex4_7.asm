TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc

.data
	; insert data here
	val1 SDWORD 8
	val2 SDWORD -15
	val3 SDWORD 20

.code
main PROC
	; insert code here
	mov eax, 7
	sub eax, val2
	sub eax, val3
	add eax, val1
	call DumpRegs

	exit
main ENDP

	; insert other subroutines here

END main
