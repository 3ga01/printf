#include <limits.h>
#include <stdio.h>
#include "main.h"

/**
 * main - Entry point
 *
 * Return: Always 0
 */
int main(void)
{
	int len;
	int len2;
	unsigned int ui;
	void *addr;
	char str[] = "Hello, World!";

	len = _printf("Let's try to printf a simple sentence.\n");
	len2 = printf("Let's try to printf a simple sentence.\n");
	ui = (unsigned int)INT_MAX + 1024;
	addr = (void *)0x7ffe637541f0;
	_printf("Length:[%d, %i]\n", len, len);
	printf("Length:[%d, %i]\n", len2, len2);
	_printf("Negative:[%d]\n", -762534);
	printf("Negative:[%d]\n", -762534);
	_printf("Unsigned:[%u]\n", ui);
	printf("Unsigned:[%u]\n", ui);
	_printf("Unsigned octal:[%o]\n", ui);
	printf("Unsigned octal:[%o]\n", ui);
	_printf("Unsigned hexadecimal:[%x, %X]\n", ui, ui);
	printf("Unsigned hexadecimal:[%x, %X]\n", ui, ui);
	_printf("Character:[%c]\n", 'H');
	printf("Character:[%c]\n", 'H');
	_printf("String:[%s]\n", "I am a string !");
	printf("String:[%s]\n", "I am a string !");
	_printf("Address:[%p]\n", addr);
	printf("Address:[%p]\n", addr);
	len = _printf("Percent:[%%]\n");
	len2 = printf("Percent:[%%]\n");
	_printf("Len:[%d]\n", len);
	printf("Len:[%d]\n", len2);
	_printf("Unknown:[%r]\n");
	_printf("Positive precision:[%*d]\n", 3, 1234);
	printf("Positive precision:[%*d]\n", 3, 1234);
	len = _printf("Precision for integer: [%.*d]\n", 5, 12345);
	len2 = printf("Precision for integer: [%.*d]\n", 5, 12345);
	printf("Length:[%d, %d]\n", len, len2);
	len = _printf("Precision for negative integer: [%.*d]\n", 3, -9876);
	len2 = printf("Precision for negative integer: [%.*d]\n", 3, -9876);
	printf("Length:[%d, %d]\n", len, len2);
	len = _printf("Precision for float: [%.*f]\n", 2, 1234.5678);
	len2 = printf("Precision for float: [%.*f]\n", 2, 1234.5678);
	printf("Length:[%d, %d]\n", len, len2);
	len = _printf("Precision for string: [%.*s]\n", 5, str);
	len2 = printf("Precision for string: [%.*s]\n", 5, str);
	printf("Length:[%d, %d]\n", len, len2);
	ui = 4294967295;
	len = _printf("Precision for unsigned int: [%.*u]\n", 7, ui);
	len2 = printf("Precision for unsigned int: [%.*u]\n", 7, ui);
	printf("Length:[%d, %d]\n", len, len2);
	ui = 4294967295;
	len = _printf("Precision for unsigned octal: [%.*o]\n", 7, ui);
	len2 = printf("Precision for unsigned octal: [%.*o]\n", 7, ui);
	printf("Length:[%d, %d]\n", len, len2);
	len = _printf("Precision for unsigned hex: [%.*x]\n", 6, ui);
	len2 = printf("Precision for unsigned hex: [%.*x]\n", 6, ui);
	printf("Length:[%d, %d]\n", len2, len2);
	len = _printf("Precision for character: [%*c]\n", 5, 'A');
	len2 = printf("Precision for character: [%*c]\n", 5, 'A');
	printf("Length:[%d, %d]\n", len, len2);
	return (0);
}
