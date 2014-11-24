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
	mov al, -128
	add al, -128
	call DumpRegs
	add al, 1
	call DumpRegs

	exit
main ENDP

	; insert other subroutines here

END main
