# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gsharony <gsharony@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 06:31:25 by gsharony          #+#    #+#              #
#    Updated: 2020/02/10 09:48:26 by gsharony         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcpy

_ft_strcpy:
	mov al, byte [rsi]
	mov rcx, rdi
	test al, al
	je exit
	inc rsi
	mov rcx, rdi
loop:
	mov byte [rcx], al
	movzx eax, byte [rsi]
	inc rcx
	inc rsi
	test al, al
	jne loop
exit:
	mov byte [rcx], 0
	mov rax, rdi
	ret
