MAKEFLAGS += -r
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
	# Homebrew-installed fortune path
	fortunesdir=/usr/local/Cellar/fortune/*/share/games/fortunes
else
	fortunesdir=/usr/share/games/fortunes
endif

wd=./fortunes

srcfiles := $(filter-out $(wildcard $(wd)/*.dat), $(wildcard $(wd)/*))
datfiles := $(srcfiles:=.dat)

buildtool=strfile
rm=rm -f

.PHONY:
all: $(datfiles)

$(wd)/glados.dat: $(wd)/glados
	$(buildtool) $^ $@

$(wd)/cave_johnson.dat: $(wd)/cave_johnson
	$(buildtool) $^ $@

$(wd)/wheatley.dat: $(wd)/wheatley
	$(buildtool) $^ $@

$(wd)/announcer.dat: $(wd)/announcer
	$(buildtool) $^ $@

.PHONY:
install: all
	cp $(wd)/* $(fortunesdir)

.PHONY:
clean:
	$(rm) $(datfiles)
