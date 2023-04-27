# logisim_install

_A logisim commandline starter._

Based on logisim-evolution release 3.8.0.
https://github.com/logisim-evolution/logisim-evolution

## Prerequisites: 
1. Unix-like OS with C compiler and make.
2. Java Runtime Environment (version 16+)

## Install:
```
git clone https://github.com/Sugarization/logisim_install.git
cd logisim_install
make install
```
On MacOS, you probably need to modify PATH, by adding
```
export PATH="$HOME/.local/bin:$PATH"
```
to ~/.zshrc (or ~/.bashrc, if your system shell is BASH)

Alternatively, to install version 2.14.6 to meet course requirements, use
```
make install_old
```
instead. See Makefile for installation details.

## Uninstall: (in the repo folder)
```
make uninstall
```

## Usage:
```
logi [file1] [file2] ...
```
You may use 
```
logi *.circ
```
to open all _.circ_ files in the current folder.
