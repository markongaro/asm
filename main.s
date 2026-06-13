	.globl _start
	.section .text
_start:
	movq $3, %rdi
	movq $5, %rbx
	addq %rbx, %rdi
	movq $60, %rax
	syscall
