OBJS= dma.o \
 videoBaseModule.o\
 main.o

LIBS = -lopencv_core\
	-lopencv_highgui\
	-lopencv_imgproc

%.o: %.c
	g++ -Wpointer-arith -o $@ -c $< 

all: $(OBJS)
	g++ $(OBJS) $(LIBS) -o test_access
#	./test_access

clean:
	rm -f test_access *.o
