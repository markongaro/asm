	.globl _start
	.section .text
_start:
	movq $2, %rbx
	movq $3, %rcx
	movq $1, %rax
loop_start:
	cmpq $0, %rcx
	jz endloop

	mulq %rbx
	decq %rcx
	jmp loop_start
endloop:
	movq %rax, %rdi
	movq $60, %rax
	syscall
