#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char cmd[1024] = "java -jar " JARNAME;

int main (int argc, char **argv)
{
	#ifndef INSTALL_OLD
	for (int i = 1; i < argc; ++i) {
		strcat(cmd, " \"");
		strcat(cmd, argv[i]);
		strcat(cmd, "\" ");
	}
	system(cmd);
	#else
	if (argc == 1) {
		puts("starting Logisim without updating...");
		strcat(cmd, " -noupdates");
		system(cmd);
	} else if (argc == 2 && 0 == strcmp(argv[1], "u")) {
		puts("starting Logisim with autoupdate enabled...");
		system(cmd);
	} else {
		puts("usage: logi [u]");
	}
	#endif
	return 0;
}