TITLE Program Template
;Description: 
;Date:

INCLUDE Irvine32.inc
PCHAR = 'A'
TAB = 9
.data
	;Insert Code Here

.code
main PROC
 	;Insert Code Here
	mov ecx, 16
	mov ebx, ecx
	dec ebx
L1:
	push ecx
	mov ecx, 16
L2:
	mov edx, ecx
	dec edx
	; background color
	mov ah, bl
	; foreground color
	mov al, dl
	call SetTextColor
	mov al, PCHAR
	call WriteChar
	mov al, TAB
	call WriteChar
	loop L2
	pop ecx
	loop L1
	call WaitMsg

	exit
main ENDP

;Insert other subroutines here

END main
