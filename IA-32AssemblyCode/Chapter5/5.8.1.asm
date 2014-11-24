TITLE Program Name							(FINENAME.asm)

; Description	: display a sentence in four colors
; Author			: snowsun
; Create Date	: 2014/11/20

INCLUDE Irvine32.inc

.data
	; insert data here
	mstr BYTE "I am snowsun", 0
	color BYTE 4, 6, 10, 14

.code
main PROC
	; insert code here
	mov esi, OFFSET color
	mov ecx, LENGTHOF color
	mov edx, OFFSET mstr
	L1:
	movzx eax, BYTE PTR [esi]
	call SetTextColor
	call WriteString
	inc esi
	call Crlf
	loop L1

	exit
main ENDP

	; insert other subroutines here

END main
