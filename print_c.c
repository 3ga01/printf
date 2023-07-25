#include "main.h"
#include <stdarg.h>

/**
 * print_c - Prints a character
 * @width: Width
 * @output_buffer: Array to handle printing
 * @custom_flags:  Calculates active flags
 * @precision: Precision declaration
 * @size: Size specifier
 * @args: List a of args
 * Return: char(success)
 */
int print_c(va_list args, char output_buffer[], int custom_flags,
		int width, int precision, int size)
{
	char c = va_arg(args, int);

	return (print_char(c, output_buffer, custom_flags, width, precision, size));
}
