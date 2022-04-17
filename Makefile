LIB=libdsp

CFILES=$(shell find ../../src -name '*.c')
$(info Cfiles: [${CFILES}])
SRC=$(subst ../../src/,,$(CFILES))
OBJECTS = $(SRC:.c=.o)

override SRC_ROOT = ../../src

override CFLAGS += \
	-I$(SRC_ROOT)/include \
	-I$(SRC_ROOT)/include/$(LIB) \

include $(MAKER_ROOT)/Makefile.$(TOOLCHAIN)

