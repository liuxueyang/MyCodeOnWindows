TITLE Program Template
;Description: 
;Date:

INCLUDE Irvine32.inc
PCHAR = 'a'
.data
	;Insert Code Here
	ColumnMax BYTE ?
	RowMax BYTE ?

.code
main PROC
 	;Insert Code Here
	mov ecx, 100
	call Randomize
L1:
	call GetMaxXY
	mov ColumnMax, dl
	mov RowMax, dh

;	call DumpRegs
	; get random column
	movzx eax, ColumnMax
	call RandomRange
	mov dl, al

	; get random row
;	movzx eax, RowMax
;	call RandomRange
;	mov dh, al
	mov dh, 20

	; go to that position
	call Gotoxy

 ; write char to that position
	mov al, PCHAR
	call WriteChar

 ; 100ms delay
	mov eax, 100
	call Delay
	loop L1
	call WaitMsg

	exit
main ENDP

;Insert other subroutines here

END main
