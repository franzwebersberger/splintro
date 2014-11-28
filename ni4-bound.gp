load "nik.gp"

k = 4
n = 8
ti(i) = i<k ? 0 : i>n ? n+1-k : i+1-k

set terminal wxt enhanced

unset grid
unset border
set border 1

set xrange [-0.1:5.1]
set yrange [0:1.0]
set xtics ("{/Symbol t}_{[1,...,k]}" 0, \
					"{/Symbol t}_{k+1}" 1, \
					"{/Symbol t}_{k+2}" 2, \
					"{/Symbol t}_{k+3}" 3, \
					"{/Symbol t}_{k+4}" 4, \
					"{/Symbol t}_{[n+1,...,n+k]}" 5) \
					nomirror
unset ytics

set samples 1000
plot	nik(0,4,x) lt -1 notitle, \
			nik(1,4,x) lt -1 notitle, \
			nik(2,4,x) lt -1 notitle, \
			nik(3,4,x) lt -1 notitle, \
			nik(4,4,x) lt -1 notitle, \
			nik(5,4,x) lt -1 notitle, \
			nik(6,4,x) lt -1 notitle, \
			nik(7,4,x) lt -1 notitle

set terminal postscript eps size 12cm,3cm enhanced
set output "ni4-bound.eps"
replot

