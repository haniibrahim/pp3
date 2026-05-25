#	$Id: Makefile,v 1.16 2004/08/14 16:27:40 bronger Exp $	
.PHONY: all clean

# Specify your C++ compiler
CXX=g++

# Target/Install directory
# *.dat files have to be there
PP3DATA=c:/pp3

CXXFLAGS=-s -O2

CHANGEFILE=-

# No changes should be necessary below this line 
# -----------------------------------------------------

all: pp3

%.cc : %.w
	$(CTANGLE) $* $(CHANGEFILE) $@

pp3: pp3.cc
	$(CXX) -DPP3DATA=\"$(PP3DATA)\" pp3.cc $(CXXFLAGS) -o pp3.exe

clean:
	del pp3.exe
