#include "main.h"

/**
 * _precision - Calculates the precision for printing
 * @format: Formatted string in which to print the arguments
 * @i: List of arguments to be printed.
 * @list: list of arguments.
 *
 * Return: Precision.
 */
int _precision(const char *fmt, int *x, va_list lst)
{
	int curr_i = *x + 1;
	int precision = -1;

	if (fmt[curr_i] != '.')
		return (precision);

	precision = 0;

	for (curr_i = curr_i +  1; fmt[curr_i] != '\0'; curr_i++)
	{
		if (is_digit(fmt[curr_i]))
		{
			precision = precision * 10;
			precision = precision + fmt[curr_i] - '0';
		}
		else if (fmt[curr_i] == '*')
		{
			curr_i++;
			precision = va_arg(lst, int);
			break;
		}
		else
		{
			break;
		}
	}

	*x = curr_i - 1;

	return (precision);
}
