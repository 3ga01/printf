#include "main.h"
#include <stdarg.h>

/**
 * print_i - Print integer
 * @args: arg List
 * @output_buffer: array to handle printing
 * @custom_flags: active flags
 * @custom_width: width.
 * @custom_precision: Precision declaration
 * @custom_size: Size specifier
 * Return: Number of chars printed(Success)
 */
int print_i(va_list args, char output_buffer[], int custom_flags,
		int custom_width, int custom_precision, int custom_size)
{
	int x = BUFF_SIZE - 2;
	int is_neg = 0;
	long int n = va_arg(args, long int);
	unsigned long int num;

	n = convert_size_number(n, custom_size);

	if (n == 0)
		output_buffer[x--] = '0';

	output_buffer[BUFF_SIZE - 1] = '\0';
	num = (unsigned long int)n;

	if (n <= -1)
	{
		num = (unsigned long int)((-1) * n);
		is_neg = 1;
	}

	while (num > 0)
	{
		output_buffer[x--] = (num % 10) + '0';
		num = num / 10;
	}

	x++;

	return (print_num(is_neg, x, output_buffer, custom_flags,
				custom_width, custom_precision, custom_size));
}
