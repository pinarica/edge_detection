all: process 

main_process.o: main_process.c
	gcc -O3 -Wall -fopenmp -std=c11 -c main_process.c 

png_util.o: png_util.c
	gcc -O3 -std=c11 -l lpng16 -c png_util.c

process: main_process.o png_util.o
	gcc -O3 -std=c11 -fopenmp -o process -lm -l png16 main_process.o png_util.o

test: process 
	./process ./images/cube.png ./images/test.png

earth: process
	./process ./images/earth.png ./images/earth_o.png

msustadium: process
	./process ./images/MSUStadium.png ./images/MSUStadium_o.png

sparty: process
	./process ./images/sparty.png ./images/sparty_o.png

clean:
	rm *.o
	rm *.out
	rm process
	rm ./images/*s.png
	rm omp_times/*.txt
