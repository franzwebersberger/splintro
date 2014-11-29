load "nik.gp"

ti(i) = i

# multiplots are not replotable yet!
set terminal postscript eps size 12cm,3cm enhanced
set output "ni1234.eps"

unset grid
unset border
set border 1

set xtics ( "{/Symbol t}_{i}" 0, \
						"{/Symbol t}_{i+1}" 1, \
						"{/Symbol t}_{i+2}" 2, \
						"{/Symbol t}_{i+3}" 3, \
						"{/Symbol t}_{i+4}" 4, \
						"{/Symbol t}_{i+5}" 5) \
					nomirror
unset ytics

set samples 1000

set yrange [0:1.1]

set multiplot layout 1,4
plot [-0.2:1.2] nik(0,1,x) lt -1 notitle
plot [-0.2:2.2] nik(0,2,x) lt -1 notitle
plot [-0.2:3.2] nik(0,3,x) lt -1 notitle
plot [-0.2:4.2] nik(0,4,x) lt -1 notitle

unset multiplot

