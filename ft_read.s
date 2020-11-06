section	.text
	global _ft_read
	extern ___error

_ft_read:
	push	rbx
	mov		rax,0x2000003
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