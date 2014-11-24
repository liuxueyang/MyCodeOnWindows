TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc

.data
	; insert data here
	source BYTE "This is the source string", 0
	;source BYTE "This", 0
	target BYTE	SIZEOF source DUP(0)

.code
main PROC
	; insert code here
	mov ecx, SIZEOF source
	dec ecx
	mov ebx, 0
	L:
	mov al, source[ecx - 1]
	mov BYTE PTR target[ebx], al
	inc ebx
	loop L
	mov target[ebx], 0

	mov esi, OFFSET target
	mov ebx, 1
	mov ecx, SIZEOF target
	call DumpMem

	exit
main ENDP

	; insert other subroutines here

END main
