load "nik.gp"
ti(i) = i

set terminal wxt enhanced

unset grid
unset border
set border 1

set xrange [0:8]
set yrange [0:0.8]
set xtics ("{/Symbol t}_{i}" 0, \
					"{/Symbol t}_{i+1}" 1, \
					"{/Symbol t}_{i+2}" 2, \
					"{/Symbol t}_{i+3}" 3, \
					"{/Symbol t}_{i+4}" 4, \
					"{/Symbol t}_{i+5}" 5, \
					"{/Symbol t}_{i+6}" 6, \
					"{/Symbol t}_{i+7}" 7, \
					"{/Symbol t}_{i+8}" 8) \
					nomirror
unset ytics

set samples 1000
plot	nik(0,4,x) lt -1 notitle, \
			nik(1,4,x) lt -1 notitle, \
			nik(2,4,x) lt -1 notitle, \
			nik(3,4,x) lt -1 notitle, \
			nik(4,4,x) lt -1 notitle

set terminal postscript eps size 12cm,3cm enhanced
set output "ni4-free.eps"
replot

