# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gsharony <gsharony@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/05 09:54:37 by gsharony          #+#    #+#              #
#    Updated: 2020/02/10 08:12:02 by gsharony         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen

_ft_strlen:
	mov eax, -1
loop:
	inc eax
	cmp byte [rdi], 0
	lea rdi, [rdi + 1]
	jne loop
	jmp exit
exit:
	ret
