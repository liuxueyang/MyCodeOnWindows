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
	mov ax, 1
	sub ax, 1
	call DumpRegs
	add ax, 1
	call DumpRegs
	sub ax, 2
	call DumpRegs
	add ax, 2
	call DumpRegs

	exit
main ENDP

	; insert other subroutines here

END main
