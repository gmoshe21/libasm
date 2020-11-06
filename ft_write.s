section	.text
	global _ft_write
	extern ___error

_ft_write:
	push	rbx
	mov		rax,0x2000004
	syscall
	jc		error
	pop		rbx
	ret

error:
	mov		rbx,rax
	call	___error
	mov		[rax],rbx
	mov		rax,-1
	pop		rbx
	ret
