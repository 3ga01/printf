#include "main.h"
#include <stdarg.h>

/**
 * print_percentage - Prints a percentage sign
 * @args: List of args
 * @output_buffer: array to handle print
 * @custom_flags:  Calculates active flags
 * @custom_width: get width.
 * @custom_precision: Precision declaration
 * @custom_size: Size specifier
 * Return: Number of chars printed
 */
int print_percentage(va_list args, char output_buffer[],
                     int custom_flags, int custom_width, int custom_precision, int custom_size)
{
    UNUSED(output_buffer);
    UNUSED(custom_precision);
    UNUSED(custom_flags);
    UNUSED(custom_width);
    UNUSED(args);
    UNUSED(custom_size);
    return (write(1, "%%", 1));
}
