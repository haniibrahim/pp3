#	$Id: Makefile,v 1.16 2004/08/14 16:27:40 bronger Exp $	
.PHONY: distri distri-cripple rpm distri-win all info doc

# you may set this to empty in order to install the files
# non-locally.
LOCAL=c:/pp3

# Convert / to \ for Windows runtime usage
#WINPATH = $(subst /,\\,$(LOCAL))

USRDIR=$(LOCAL)

# Standard share directory
DATADIR= $(LOCAL)

# directory for pp3 databases
PP3DATA= $(LOCAL)

# destination directory for executables
DESTDIR= $(USRDIR)

CHANGEFILE=-

CXXFLAGS=-s -O2

# No changes should be necessary below this line 
# -----------------------------------------------------

all: pp3

pp3: pp3.cc
	$(CXX) -DPP3DATA=\"$(PP3DATA)\" pp3win.cc $(CXXFLAGS) -o pp3


