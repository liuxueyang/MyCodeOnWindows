TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc

.data
	; insert data here
	arrayD DWORD 1000h, 2000h, 3000h
	prompt1 BYTE "Enter a 32-bit signed integer: ", 0
	dwordVal DWORD ?

.code
main PROC
	; insert code here
	mov eax, brown + (blue * 16)
	call SetTextColor
	call Clrscr

	mov esi, OFFSET arrayD
	mov ecx, LENGTHOF arrayD
	mov ebx, TYPE arrayD
	call DumpMem

	call Crlf

	mov edx, OFFSET prompt1
	call WriteString
	call ReadInt
	mov dwordVal, eax

	call Crlf
	call WriteInt
	call Crlf
	call WriteHex
	call Crlf
	call WriteBin
	call Crlf
	call WaitMsg

	mov eax, lightGray + (black * 16)
	call SetTextColor
	call Clrscr

	exit
main ENDP

	; insert other subroutines here

END main
