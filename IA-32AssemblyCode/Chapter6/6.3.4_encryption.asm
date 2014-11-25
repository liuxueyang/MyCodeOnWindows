TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:

INCLUDE Irvine32.inc
KEY = 239
BUFMAX = 128
.data
	; insert data here
	sPrompt BYTE "Enter the plain text: ", 0
	sEncrypt BYTE "Cipher text: ", 0
	sDecrypt BYTE "Decrypted: ", 0
	buffer BYTE BUFMAX+1 DUP(0)
	bufSize DWORD ?

.code
main PROC
	; insert code here
	call InputTheString
	call TranslateBuffer

	mov edx, OFFSET sEncrypt
	call DisplayMessage

	call TranslateBuffer
	mov edx, OFFSET sDecrypt
	call DisplayMessage

	exit
main ENDP

	; insert other subroutines here

; Prompts user for a plaintext string. Saves
; the string and its length
; Receives: nothing
; Retures: nothing
InputTheString PROC
	pushad
	mov edx, OFFSET sPrompt
	call WriteString

	mov ecx, BUFMAX
	mov edx, OFFSET buffer
	call ReadString
	mov bufSize, eax
	call Crlf
	popad
	ret
InputTheString ENDP

; Translates the string by xor each byte with 
; the encryption key byte.
; Receives: nothing
; Returns: nothing
TranslateBuffer PROC
	pushad
	mov ecx, bufSize
	mov esi, 0
	L1:
		xor buffer[esi], KEY
		inc esi
		loop L1
	popad
	ret
TranslateBuffer ENDP

; Displays the encrypted or decrypted message.
; Receives: edx points to the message
; Returns: nothing
DisplayMessage PROC
	pushad
	call WriteString
	mov edx, OFFSET buffer
	call WriteString

	call Crlf
	call Crlf
	popad
	ret
DisplayMessage ENDP

END main
