#include "main.h"
#include <stdio.h>
#include <stdarg.h>

/**
 * print_S - Handles the custom conversion specifier '%S'
 * @arg_list: The va_list containing the argument to print
 * Return: The number of characters printed
 */

int print_S(va_list arg_list)
{
	int printed_chars = 0, i = 0;
	char *str = va_arg(arg_list, char *);

	if (str == NULL)
	{
		printed_chars += printf("(null)");
	}
	else
	{
		for (i = 0; str[i] != '\0'; i++)
		{
			if (str[i] < 32 || str[i] >= 127)
			{
				printed_chars += printf("\\x%02X", (unsigned char)str[i]);
			}
			else
			{
				printed_chars += putchar(str[i]);
			}
		}
	}
	return (printed_chars);
}	
