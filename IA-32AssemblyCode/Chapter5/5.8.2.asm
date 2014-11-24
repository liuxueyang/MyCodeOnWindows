TITLE Program Template
;Description: 
;Date:

INCLUDE Irvine32.inc

.data
	;Insert Code Here
	filename BYTE "newfile.txt",0
	mhandle DWORD ?
	mydata DWORD 47 DUP(?)

.code
main PROC
 	;Insert Code Here
	;create new file
	mov edx, OFFSET filename
	call CreateOutputFile
	mov mhandle, eax

	;calculate fibonacci number
	mov ecx, 46
	mov eax, 0
	mov ebx, 1
	mov esi, OFFSET mydata
	mov [esi], ebx
L1:
	add eax, ebx
	add esi, TYPE DWORD
	mov [esi], eax
	xchg eax, ebx
	loop L1

	;write to file
	mov eax, mhandle
	mov edx, OFFSET mydata
	mov ecx, SIZEOF mydata
	call WriteToFile
	call DumpRegs

	exit
main ENDP

;Insert other subroutines here

END main
