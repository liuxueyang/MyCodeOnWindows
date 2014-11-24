TITLE Program Name							(FINENAME.asm)

; Description	: Chapter 3 -- exercise 1
; Author			: snowsun
; Create Date	: 2014/11/16 17:03
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc

.data
	; insert data here

.code
main PROC
	; insert code here
	mov eax, 40000h
	sub eax, 10000h
	sub eax, 20000h
	call DumpRegs

	exit
main ENDP

	; insert other subroutines here

END main
