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
	mov al, 0ffh
	inc al
	call DumpRegs
	dec al
	call DumpRegs

	exit
main ENDP

	; insert other subroutines here

END main
