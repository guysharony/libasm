/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gsharony <gsharony@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/11 08:34:05 by gsharony          #+#    #+#             */
/*   Updated: 2020/02/11 08:36:47 by gsharony         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libc.h>

int			ft_strlen(const char *str);
char		*ft_strcpy(char *dst, char const *src);
int			ft_strcmp(const char *s1, const char *s2);
ssize_t		ft_write(int fildes, const void *buf, size_t nbytes);
ssize_t		ft_read(int fildes, void *buf, size_t nbyte);
char		*ft_strdup(const char *str);

int			main(void)
{
	char	buf[100];
	char	*tmp;
	int		a;
	int		b;

	a = 0;
	b = 0;
	while (a < 100)
		buf[a++] = '\0';
	printf("__ft_strlen__\n");
	printf("'':\n< %d\n> %d\n\n",
			(int)strlen(""), ft_strlen(""));
	printf("'Test':\n< %d\n> %d\n\n",
			(int)strlen("Test"), ft_strlen("Test"));
	printf("'This is a long test':\n< %d\n> %d\n\n",
			(int)strlen("This is a long test"), ft_strlen("This is a long test"));
	printf("'10':\n< %d\n> %d\n\n",
			(int)strlen("10"), ft_strlen("10"));

	printf("__ft_strcpy__\n");
	printf("'':\n< %s\n> %s\n\n",
			strcpy(buf, ""), ft_strcpy(buf, ""));
	printf("'Yes':\n< %s\n> %s\n\n",
			strcpy(buf, "Yes"), ft_strcpy(buf, "Yes"));
	printf("'This is a long long test!':\n< %s\n> %s\n\n",
			strcpy(buf, "This is a long long test!"), ft_strcpy(buf, "This is a long long test!"));

	printf("___ft_strcmp__\n");
	printf("'' - '':\n< %d\n> %d\n\n",
			strcmp("", ""), ft_strcmp("", ""));
	printf("'Nope' - 'Test':\n< %d\n> %d\n\n",
			strcmp("Nope", "Test"), ft_strcmp("Nope", "Test"));
	printf("'Same' - 'Same':\n< %d\n> %d\n\n",
			strcmp("Same", "Same"), ft_strcmp("Same", "Same"));
	printf("'' - 'Yeap':\n< %d\n> %d\n\n",
			strcmp("", "Yeap"), ft_strcmp("", "Yeap"));
	printf("'Test' - '':\n< %d\n> %d\n\n",
			strcmp("Test", ""), ft_strcmp("Test", ""));

	printf("___ft_write___\n");
	write(1, "'Test' - 4:\n", 13);
	write(1, "< ", 2);
	printf(", %d\n", (int)write(1, "Test", 4));
	write(1, "> ", 2);
	printf(", %d\n\n", (int)ft_write(1, "Test", 4));
	write(1, "'This is a long test' - 19:\n", 28);
	write(1, "< ", 2);
	printf(", %d\n", (int)write(1, "This is a long test", 19));
	write(1, "> ", 2);
	printf(", %d\n\n", (int)ft_write(1, "This is a long test", 19));

	printf("___ft_read___\n");
	printf("'main.c' - 42:\n");
	b = read(open("main.c", O_RDONLY), buf, 42);
	printf("(%d) < %s\n", b, buf);
	b = ft_read(open("main.c", O_RDONLY), buf, 42);
	printf("(%d) > %s\n\n", b, buf);
	printf("'Makefile' - 90:\n");
	b = read(open("Makefile", O_RDONLY), buf, 90);
	printf("(%d) < %s\n", b, buf);
	b = ft_read(open("Makefile", O_RDONLY), buf, 90);
	printf("(%d) > %s\n\n", b, buf);

	printf("___ft_strdup___\n");
	printf("'This is a test':\n");
	tmp = strdup("This is a test");
	printf("< %s\n", tmp);
	free(tmp);
	tmp = ft_strdup("This is a test");
	printf("> %s\n\n", tmp);
	free(tmp);

	printf("'Yeap':\n");
	tmp = strdup("Yeap");
	printf("< %s\n", tmp);
	free(tmp);
	tmp = ft_strdup("Yeap");
	printf("> %s\n\n", tmp);
	free(tmp);

	printf("'':\n");
	tmp = strdup("");
	printf("< %s\n", tmp);
	free(tmp);
	tmp = ft_strdup("");
	printf("> %s\n", tmp);
	free(tmp);
	return (0);
}
