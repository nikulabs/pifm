CXXFLAGS=-Wall -O3 -fno-strict-aliasing -fwrapv -Wstrict-prototypes -std=c99 -lm -fpermissive -Wint-to-pointer-cast
all: pifm

clean:
	rm -f pifm *.o
