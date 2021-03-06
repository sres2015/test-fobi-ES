#!/usr/bin/make
# This is the ... Makefile
# Destination directoty can be changed: 
# make install DESTDIR=/path/to/dir

# Vars
DESTDIR=/home/gituser/Zielordner
SCRIPTS=$(DESTDIR)/usr/bin

# help target
help:
	@echo ' '
	@echo 'Targets of this Makefile:'
	@echo '-------------------------------------'
	@echo ' '
	@echo '   make help'
	@echo '      show this help'
	@echo ' '
	@echo '   make install'
	@echo '      install the scripts into OS'
	@echo ' '
	@echo '   make uninstall'
	@echo '      delete the scripts from OS'
	@echo ' '

# install target
install:
	@install -D -oroot -groot --mode=0744 hallo.sh $(DESTDIR)/hallo.sh

# uninstall target
uninstall:
	@rm $(DESTDIR)/hallo.sh
