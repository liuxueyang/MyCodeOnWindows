TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc

OUTER_LOOP_COUNT = 5
.data
	; insert data here
	startTime DWORD ?
	msg1 BYTE "Please wait...", 0dh, 0ah, 0
	msg2 BYTE "Elapsed milliseconds: ", 0

.code
main PROC
	; insert code here
	mov edx, OFFSET msg1
	call WriteString

	call GetMSeconds
	mov startTime, eax
	mov ecx, OUTER_LOOP_COUNT
	L:
	call innerLoop
	loop L

	call GetMSeconds
	sub eax, startTime
	mov edx, OFFSET msg2
	call WriteString
	call WriteDec
	call Crlf

	exit
main ENDP

innerLoop PROC
	push ecx
	mov ecx, 0
	dec ecx
	L:
	mov eax, eax
	loop L
	pop ecx
	ret
innerLoop ENDP

	; insert other subroutines here

END main
