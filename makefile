CC = gcc
CFLAGS = -o3
//CFLAGS = -Wall -g 

LIB_NAME = libarithmetics.a
LIB_SRCS = libarithmetics.c
LIB_OBJS = $(LIB_SRCS:.c=.o)


SOURCES = Main.c Power.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = app

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) $(LIB_NAME)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@ $(LIB_NAME)

$(LIB_NAME): $(LIB_OBJS)
	ar rcs $@ $(LIB_OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(LIB_OBJS) $(OBJECTS) $(LIB_NAME) $(EXECUTABLE)

.PHONY: all clean