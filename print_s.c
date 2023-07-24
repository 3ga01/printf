#include "main.h"
#include <stdarg.h>

/**
 * print_s - Prints a string
 * @output_buffer: Buffer array to handle printing
 * @custom_flags:  Calculates active flags
 * @custom_size: Size specifier
 * @custom_width: get width.
 * @custom_precision: Precision declaration
 * Return: string(success)
 * @args: List of arguments
 */
int print_s(va_list args, char output_buffer[],
            int custom_flags, int custom_width, int custom_precision, int custom_size)
{
    UNUSED(custom_flags);
    UNUSED(custom_width);
    UNUSED(custom_precision);
    UNUSED(output_buffer);
    UNUSED(custom_size);

    int length = 0, i;
    char *str = va_arg(args, char *);

    if (str == NULL)
    {
        str = "(null)";
        if (custom_precision >= 6)
            str = "      ";
    }

    while (str[length] != '\0')
        length++;

    if (custom_precision >= 0 && custom_precision < length)
        length = custom_precision;

    if (custom_width > length + 1)
    {
        if (custom_flags & F_MINUS)
        {
            write(1, &str[0], length);
            for (i = custom_width - length; i >= 1; i--)
                write(1, " ", 1);
            return (custom_width);
        }
        else
        {
            for (i = custom_width - length; i >= 1; i--)
                write(1, " ", 1);
            write(1, &str[0], length);
            return (custom_width);
        }
    }

    return (write(1, str, length));
}
