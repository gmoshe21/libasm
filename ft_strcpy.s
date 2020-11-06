segment .text
	global _ft_strcpy

_ft_strcpy:
	mov		rcx, 0
	cmp		rsi, 0
	je		exit

else:
	mov 	ah, BYTE[rsi + rcx]
	mov		BYTE[rdi + rcx], ah
	cmp		BYTE[rsi + rcx], 0
	je		exit
	inc		rcx
	jmp		else

exit:
	mov		rax, rdi
	ret