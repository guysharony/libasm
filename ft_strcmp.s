# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gsharony <gsharony@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/10 08:17:18 by gsharony          #+#    #+#              #
#    Updated: 2020/02/10 09:32:22 by gsharony         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcmp

_ft_strcmp:
	xor eax, eax
loop:
	mov ecx, eax
	movzx edx, byte [rdi + rcx]
	movzx ecx, byte [rsi + rcx]
	test cl, cl
	je exit
	test dl, dl
	je exit
	inc eax
	cmp dl, cl
	je loop
exit:
	movzx eax, dl
	sub eax, ecx
	cmp eax, 0
	jz equ
	jg sup
	jmp inf
inf:
	mov eax, -1
	ret
sup:
	mov eax, 1
	ret
equ:
	mov eax, 0
	ret
