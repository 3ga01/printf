#include "main.h"
#include <stdio.h>
#include <stdarg.h>

/**
 * is_digit - Checks if a character is a digit (0-9)
 * @c: The character to check
 *
 * Return: 1 if the character is a digit, otherwise 0.
 */
int is_digit(char c)
{
	return (c >= '0' && c <= '9');
}
/**
 * get_precision - Calculates the precision for printing
 * @format: Formatted string in which to print the arguments
 * @i: List of arguments to be printed.
 * @list: list of arguments.
 *
 * Return: Precision.
 */
int get_precision(const char *format, int *i, va_list list)
{
	int curr_i = *i + 1;
	int precision = -1;

	if (format[curr_i] != '.')
		return (precision);

	precision = 0;

	while (format[curr_i] != '\0')
	{
		if (is_digit(format[curr_i]))
		{
			precision *= 10;
			precision += format[curr_i] - '0';
		}
		else if (format[curr_i] == '*')
		{
			curr_i++;
			precision = va_arg(list, int);
			break;
		}
		else
		{
			break;
		}
		curr_i++;
	}

	*i = curr_i - 1;

	return (precision);
}
