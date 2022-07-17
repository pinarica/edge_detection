all: process 

main_process.o: main_process.c
	gcc -std=c99 -c main_process.c 

png_util.o: png_util.c
	gcc -std=c99 -l lpng16 -c png_util.c

process: main_process.o png_util.o
	gcc -std=c99 -o process -lm -l png16 main_process.o png_util.o

test: process 
	./process ./images/cube.png ./images/test.png

earth: process
	./process ./images/earth.png ./images/earth_s.png

msustadium: process
	./process ./images/MSUStadium.png ./images/MSUStadium_s.png

sparty: process
	./process ./images/sparty.png ./images/sparty_s.png

clean:
	rm *.o
	rm *.out
	rm process
	rm ./images/*s.png
	rm serial_time/*.txt 
