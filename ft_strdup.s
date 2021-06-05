# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gsharony <gsharony@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/10 10:48:03 by gsharony          #+#    #+#              #
#    Updated: 2020/02/11 07:04:27 by gsharony         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_strdup
		extern _ft_strlen
		extern _ft_strcpy
		extern _malloc

_ft_strdup:
	push rbp
	mov rbp, rsp
	push rbx
	push rax
	mov rbx, rdi
	call _ft_strlen
	lea rdi, [rax + 1]
	call _malloc
	test rax, rax
	je exit
	mov rdi, rax
	mov rsi, rbx
	call _ft_strcpy
	add rsp, 8
	pop rbx
	pop rbp
	ret
exit:
	xor eax, eax
	add rsp, 8
	pop rbx
	pop rbp
	ret
