# Makefile for Logisim Installation 

JAR = logisim_evolution.jar
BIN = logi

install:
	mkdir -p /usr/local/jar
	cp $(JAR) /usr/local/jar
	cc logi.c -o $(BIN)
	mv $(BIN) /usr/local/bin 

uninstall:
	rm /usr/local/bin/$(BIN)
	rm /usr/local/jar/$(JAR)
	
