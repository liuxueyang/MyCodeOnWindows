TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc

.data
	; insert data here
	Uarray WORD 1000h, 2000h, 3000h, 4000h
	Sarray SWORD -1, -2, -3, -4

.code
main PROC
	; insert code here
	movzx eax, WORD PTR Uarray
	movzx ebx, WORD PTR Uarray + 2
	movzx ecx, WORD PTR Uarray + 4
	movzx edx, WORD PTR Uarray + 6
	call DumpRegs

	movsx eax, WORD PTR Sarray
	movsx ebx, WORD PTR Sarray + 2
	movsx ecx, WORD PTR Sarray + 4
	movsx edx, WORD PTR Sarray + 6
	call DumpRegs

	exit
main ENDP

	; insert other subroutines here

END main
