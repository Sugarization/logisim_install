# Makefile for Logisim Installation 

JAR = logisim-evolution.jar
BIN = logi
CC = gcc

.PHONY: install, uninstall

build:
	$(CC) logi.c -o $(BIN) -DJARNAME=\"$(JAR)\" 

install: build
	mkdir -p /usr/local/jar
	cp $(JAR) /usr/local/jar
	mv $(BIN) /usr/local/bin 

uninstall:
	rm /usr/local/bin/$(BIN)
	rm /usr/local/jar/$(JAR)
	
