TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:

INCLUDE Irvine32.inc

ENTER_KEY = 13
.data
	; insert data here
	InvalidInputMsg BYTE "Invalid input", 13, 10, 0

.code
main PROC
	; insert code here
	call Clrscr

StateA:
	call Getnext
	cmp al, '+'
	je StateB
	cmp al, '-'
	je StateB
	call IsDigit
	jz StateC
	call DisplayErrorMsg
	jmp Quit

StateB:
	call Getnext
	call IsDigit
	jz StateC
	call DisplayErrorMsg
	jmp Quit

StateC:
	call Getnext
	call IsDigit
	jz StateC
	cmp al, ENTER_KEY
	je Quit
	call DisplayErrorMsg
	jmp Quit

Quit:
	call Crlf

	exit
main ENDP

	; insert other subroutines here
Getnext PROC
	call ReadChar
	call WriteChar
	ret
Getnext ENDP

DisplayErrorMsg PROC
	push edx
	call Crlf
	mov edx, OFFSET InvalidInputMsg
	call WriteString
	pop edx
	ret
DisplayErrorMsg ENDP

;Isdigit PROC
;	cmp al, '0'
;	jb ID1
;	cmp al, '9'
;	ja ID1
;	test al, 0
;ID1:
;	ret
;Isdigit ENDP

END main
