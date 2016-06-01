MAKEFLAGS += -r

fortunesdir=/usr/share/games/fortunes
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

.PHONY:
install: all
	cp $(wd)/* $(fortunesdir)

.PHONY:
clean:
	$(rm) $(datfiles)
