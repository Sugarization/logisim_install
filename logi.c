#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char cmd[1024] = "java -jar /usr/local/jar/" JARNAME;

int main (int argc, char **argv)
{
	for (int i = 1; i < argc; ++i) {
		strcat(cmd, " \"");
		strcat(cmd, argv[i]);
		strcat(cmd, "\" ");
	}
	system(cmd);
	return 0;
}