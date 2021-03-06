LD=gcc
CFLAGS=-ggdb3 -O2 -Wall -std=c99 
LDFLAGS=-lpthread -lyaml

EXE=netstream
OBJECTS=netstream.o buffer.o conffile.o endpts.o

all: $(EXE)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(EXE): $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@ $(OBJECTS) 

clean:
	rm -f $(OBJECTS) $(EXE)
