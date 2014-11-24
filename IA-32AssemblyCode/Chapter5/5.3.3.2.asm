TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc
TAB = 9
.data
	; insert data here

.code
main PROC
	; insert code here
	call Randomize
	call Rand1
	call Rand2

	exit
main ENDP

Rand1 PROC
	mov ecx, 10
	L:
	call Random32
	call WriteDec
	mov al, TAB
	call WriteChar
	loop L
	call Crlf
	ret
Rand1 ENDP

Rand2 PROC
	mov ecx, 10
	L:
	mov eax, 100
	call RandomRange
	sub eax, 50
	call WriteInt
	mov al, TAB
	call WriteChar
	loop L
	call Crlf
	ret
Rand2 ENDP
	; insert other subroutines here

END main
