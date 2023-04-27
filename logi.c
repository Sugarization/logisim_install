#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char buf[1024];

#define cmd "java -jar /usr/local/jar/logisim_evolution.jar "

int main (int argc, char **argv)
{
	if (argc == 1) {
		puts("starting Logisim without updating...");
		system(cmd " -noupdates ");
	} else if (argc == 2 && 0 == strcmp(argv[1], "u")) {
		puts("starting Logisim with autoupdate enabled...");
		system(cmd);
	} else {
		puts("usage: logi [u]");
	}
	
	return 0;
}