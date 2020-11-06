segment .text
	global _ft_strcmp

_ft_strcmp:
	mov		rcx, 0
	jmp		str

int:
	cmp		ax, 0
	je		exit
	inc		rcx

str:
	movzx	ax, BYTE[rdi + rcx]
	movzx	bx, BYTE[rsi + rcx]
	cmp		ax, bx
	je		int
	jmp		else

else:
	cmp		ax, bx
	jg		exit2
	jl		exit3

exit0:
	ret

exit:
	mov		rax, 0
	ret

exit2:
	mov		rax, 1
	ret

exit3:
	mov		rax, -1
	ret