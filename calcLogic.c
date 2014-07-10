#include <linux/kernel.h>
#include <linux/string.h>

#define WRITE_SIZE 100

static char arg1_input[WRITE_SIZE];
static char arg2_input[WRITE_SIZE];
static char operation_input[WRITE_SIZE];

long calculate(void)
{
	long a1 = 0;
	long a2 = 0;
	long res = 0;

	kstrtol(arg1_input, 10, &a1);
	kstrtol(arg2_input, 10, &a2);

	if (operation_input[0] == '+') {
		res = a1 + a2;
	} else if (operation_input[0] == '-') {
		res = a1 - a2;
	} else if (operation_input[0] == '.') {
		res = a1 * a2;
	} else if (operation_input[0] == '/') {
		res = a1 / a2;
	}
	return res;
}

