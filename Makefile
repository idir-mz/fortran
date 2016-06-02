#------------------------------------------------------------
# Makefile
#
#
# Changelog: 
#
#-----------------------------------------------------------


# Project name
TARGET= main.exe

# Source files extension
EXT=f90

# Compiler
FC = gfortran

# Compiling flags
FFLAGS = -g -fcheck=all -Wall -Wextra -Wconversion -pedantic
LFLAGS = -l

# Targeted directories
BINDIR = bin
SRCDIR = src
OBJDIR = obj


# Get source files
SOURCES:= $(wildcard $(SRCDIR)/*.$(EXT))
OBJECTS:= $(SOURCES:$(SRCDIR)/%.$(EXT)=$(OBJDIR)/%.o)
MODULE = print_matrix_mod.mod

.PHONY: clean





run: build
	@cd $(BINDIR); \
	./$(TARGET) 

build: $(MODULES) $(OBJECTS)
	@mkdir -p $(BINDIR)
	$(FC) $(OBJECTS) -o $(BINDIR)/$(TARGET)


$(OBJDIR)/%.o : $(SRCDIR)/%.$(EXT)
	@mkdir -p $(@D)
	$(FC) $(FFLAGS) -c $< -o $@

%.mod : $(SRCDIR)/%.$(EXT)
	$(FC) $(FFLAG) -c $< -o $@
	

clean:
	rm -f  $(BINDIR)/*.exe $(BINDIR)*.out 


help:
	@echo
	@echo "Valid targets: "
