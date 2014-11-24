TITLE Program Name							(FINENAME.asm)

; Description	: Chapter 3 -- exercise 1
; Author			: snowsun
; Create Date	: 2014/11/16 17:03
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc

.data
	; insert data here
	var1 BYTE 0Ah
	var2 WORD 10h
	var3 DWORD 20h
	var4 QWORD 30h
	var5 TBYTE 40h
	var6 REAL4 -2.1
	var7 REAL8 3.2e-260
	var8 REAL10 4.6e+4096

.code
main PROC
	; insert code here
	mov al, var1
	mov bx, var2
	mov ecx, var3
	call DumpRegs

	exit
main ENDP

	; insert other subroutines here

END main
