#!/bin/bash
# Eric Huang
# How to Use: open DAT TERMINAL AND TYPE DAT ./INJECT.SH AND WATCH THAT SHIT RUN
rm -f serialoutput ompoutput
echo "Bulk injecting arguments to mxv-serial and mxv-omp for m, n, and t"

for m in 16000 32000 64000 128000 256000 512000 1024000;
do
	for n in 100 200 400 800 1600 3200 64000 128000;
	do
		./mxv-serial $m $n >>serialoutput
		for t in 2 4 8 12;
		do
			./mxv-omp $m $n $t >>ompoutput
		done
	done
done
echo "Done"
