include Irvine32.inc

.data
namePrompt BYTE "Name: ",0
keygenPrompt BYTE "Key: ",0
lines BYTE "-------------------",0
author BYTE "| keygen by .INF0 | ~cracking since 2017.",0
username BYTE 101 DUP(0)

.code
main proc

;COOL TEXT
	mov edx, OFFSET lines
	call WriteString
	call Crlf
	mov edx, OFFSET author
	call WriteString
	call Crlf
	mov edx, OFFSET lines
	call WriteString
	call Crlf

	mov edx, OFFSET namePrompt
	call WriteString
	xor edx, edx

;INPUT
	mov edx, OFFSET username
	mov ecx, 99
	call ReadString

;KEYGEN PT. I (FLIPPING NAME) [[idk how to make procedure ver.]]
	mov ecx, eax ;lenght of string in eax
	mov esi, 0
PUSHER:
	movzx ebx, [username + esi]
	PUSH ebx
	inc esi
loop PUSHER
mov ecx, eax ;length still stored in eax ("mov" just copies)
mov esi, 0
POPPER:
	POP ebx
	mov [username + esi], bl
	inc esi
loop POPPER

;KEYGEN PT. II (ENCRYPTION) [XOR each char by 1D through looping and save somewhere]
mov ecx, eax
mov esi, 0
XORER:
	xor [username + esi], 01Dh ;idk if this is the right way
	inc esi
loop XORER

;OUTPUT
mov edx, OFFSET keygenPrompt
call WriteString
mov edx, OFFSET username
call WriteString
call Crlf

	invoke ExitProcess,0
main endp
end main