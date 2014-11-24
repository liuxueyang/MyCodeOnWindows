TITLE Program Template
;Description: 
;Date:

INCLUDE Irvine32.inc
TAB = 9
.data
	;Insert Code Here

.code
main PROC
 	;Insert Code Here
	mov ecx, 50
	call Randomize
L1:
	mov eax, 41
	call RandomRange
	sub eax, 20
	call WriteInt
	mov al, TAB
	call WriteChar
	loop L1
	call Crlf
	call WaitMsg

	exit
main ENDP

;Insert other subroutines here

END main
