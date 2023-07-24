#include "main.h"
#include <stdarg.h>

/**
 * print_b - Prints a number as binary.
 * @args: Arg list
 * @output_buffer: Array to handle print
 * @custom_flags: Active flags
 * @custom_size: Size
 * @custom_width: Width.
 * @custom_precision: Precision declaration
 * Return: Numbers of char printed.(success)
 */
int print_b(va_list args, char output_buffer[],
            int custom_flags, int custom_width, int custom_precision, int custom_size)
{
	unsigned int arr[32];
	int count;
	unsigned int x, y, i, sum;

	UNUSED(output_buffer);
    UNUSED(custom_flags);
    UNUSED(width);
    UNUSED(custom_precision);
    UNUSED(custom_size);

    y = 2147483648;
	x = va_arg(args, unsigned int);
	arr[0] = x / y;
	for (i = 1; i < 32; i++)
	{
		y = y / 2;
		arr[i] = (x / y) % 2;
	}
	for (i = 0, sum = 0, count = 0; i <= 31; i++)
	{
		sum = sum + arr[i];
		if (sum || i == 31)
		{
			char c = '0' + arr[i];

			write(1, &c, 1);
			count++;
		}
	}
	return (count);
}
