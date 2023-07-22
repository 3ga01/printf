#include "main.h"

/**
 * is_digit - check digit
 * @c: char to check
 */
bool is_digit(char c)
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

	if (format[0] == '\0' || format[curr_i] == '\0')
		return (precision);

	if (format[curr_i] != '.')
		return (precision);

	precision = 0;

	if (!is_digit(format[curr_i + 1]))
	{
		*i = curr_i;
		return (precision);
	}

	for (curr_i += 1; format[curr_i] != '\0'; curr_i++)
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
			break;
	}
	if (precision < 0)
		precision = -1;

	*i = curr_i - 1;

	return (precision);
}
