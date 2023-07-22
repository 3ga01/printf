#include "main.h"
#include <stdio.h>
#include <stdarg.h>
#include <unistd.h>

/**
 * _printf - Custom implementation of printf function
 * @format: The format string to be printed
 *
 * Return: The number of characters printed (excluding the null byte)
 */
int _printf(const char *format, ...)
{
	int printed_chars = 0;
	va_list args;
	char *str;

	if (format == NULL)
		return (-1);

	va_start(args, format);

	while (*format)
	{
		if (*format == '%')
		{
			format++;

			switch (*format)
			{
				case 'c':
					printed_chars += print_char(va_arg(args, int));
					break;
				case 's':
					str = va_arg(args, char *);
					printed_chars += print_string(str);
					break;
				case '%':
					printed_chars += write(1, &(*format), 1);
					break;
				default:
					printed_chars += write(1, "%", 1);
					printed_chars += write(1, &(*format), 1);
			}
		}
		else
		{
			printed_chars += write(1, &(*format), 1);
		}
		format++;
	}
	va_end(args);
	return (printed_chars);
}

/**
 * print_char - Print a single character to stdout
 * @c: The character to be printed
 *
 * Return: 1 (always)
 */
int print_char(char c)
{
	return (write(1, &c, 1));
}

/**
 * print_string - Print a string to stdout
 * @str: The string to be printed
 *
 * Return: The number of characters printed
 */
int print_string(char *str)
{
	int i = 0;

	if (str == NULL)
		str = "(null)";

	while (str[i])
	{
		write(1, &str[i], 1);
		i++;
	}

	return (i);
}

