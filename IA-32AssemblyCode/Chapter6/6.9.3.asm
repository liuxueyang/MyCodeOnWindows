TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:

INCLUDE Irvine32.inc

.data
	; insert data here
	intVal DWORD ?
	prompt BYTE "Please input a number between 0 and 100: ", 0

.code
main PROC
	; insert code here
	mov edx, OFFSET prompt
	call WriteString
	call Crlf
	call ReadDec
	mov intVal, eax
	mov ebx, eax

	.IF (ebx >= 90) && (ebx <= 100)
		mov al, 'A'
		call WriteChar
	.ELSEIF (ebx >= 80) && (ebx <= 89)
		mov al, 'B'
		call WriteChar
	.ELSEIF (ebx >= 70) && (ebx <= 79)
		mov al, 'C'
		call WriteChar
	.ELSEIF (ebx >= 60) && (ebx <= 69)
		mov al, 'D'
		call WriteChar
	.ELSE
		mov al, 'E'
		call WriteChar
	.ENDIF

	call Crlf

	exit
main ENDP

	; insert other subroutines here

END main
