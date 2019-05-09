#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

# Add your Source files to this variable
ifeq ($(PLATFORM),HOST)
	SOURCES = src/main.c    \
	  	  src/memory.c  \
		  src/data.c    \
		  src/course1.c \
		  src/stats.c
else
	SOURCES= main.c \
		 memory.c \
		 interrupts_msp432p401r_gcc.c \
		 startup_msp432p401r_gcc.c \
		 system_msp432p401r.c
endif

# Add your include paths to this variable
ifeq ($(PLATFORM),HOST)
	INCLUDE_PATH = -Iinclude/common
	INCLUDES = memory.h   \
		   platform.h \
		   course1.h  \
		   data.h     \
		   stats.h
else
	INCLUDE_PATH = -I./include/common -I./include/msp432 -I./include/CMSIS
	INCLUDES = memory.h \
		   platform.h \
		   msp_compatibility.h \
		   msp432p401r.h \
		   system_msp432p401r.h \
		   cmsis_gcc.h \
		   core_cm4.h \
		   core_cmFunc.h \
		   core_cmInstr.h \
		   core_cmSimd.h
endif

