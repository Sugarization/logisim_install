#!/bin/bash
mkdir -p /usr/local/jar
cp logisim_evolution.jar /usr/local/jar
cc logi.c -o logi
cp logi /usr/local/bin 
 