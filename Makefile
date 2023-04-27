# Makefile for Logisim Installation 

JAR = logisim-evolution-3.8.0.jar
JAR_OLD = logisim-evolution-2.14.6.jar
PATH_TO_JAR = ~/.logisim_jar/

BIN = logi
PATH_TO_BIN = ~/.local/bin/
CC = gcc

.PHONY: install, install_old, uninstall

install: 
	$(CC) logi.c -o $(BIN) -DJARNAME=\"$(PATH_TO_JAR)$(JAR)\" 
	
	mkdir -p $(PATH_TO_JAR)
	mkdir -p $(PATH_TO_BIN)
	
	cp $(JAR) $(PATH_TO_JAR)
	mv $(BIN) $(PATH_TO_BIN)
	
install_old:
	$(CC) logi.c -o $(BIN) -DJARNAME=\"$(PATH_TO_JAR)$(JAR_OLD)\"  -DINSTALL_OLD
	mkdir -p $(PATH_TO_JAR)
	mkdir -p $(PATH_TO_BIN)
	
	cp $(JAR_OLD) $(PATH_TO_JAR)
	mv $(BIN) $(PATH_TO_BIN)

uninstall:
	rm $(PATH_TO_BIN)$(BIN) > /dev/null
	rm $(PATH_TO_JAR)/* > /dev/null
	
