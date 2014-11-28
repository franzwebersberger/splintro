load "nik.gp"
ti(i) = i

set terminal wxt enhanced

unset grid
unset border
set border 1

set xrange [-0.2:13.2]
set yrange [0:1.1]
set xtics ( \
					"{/Symbol t}_{i}" 0, "{/Symbol t}_{i+1}" 1, \
					"{/Symbol t}_{i}" 2, "{/Symbol t}_{i+1}" 3, "{/Symbol t}_{i+2}" 4, \
					"{/Symbol t}_{i}" 5, "{/Symbol t}_{i+1}" 6, "{/Symbol t}_{i+2}" 7, "{/Symbol t}_{i+3}" 8, \
					"{/Symbol t}_{i}" 9, "{/Symbol t}_{i+1}" 10, "{/Symbol t}_{i+2}" 11, "{/Symbol t}_{i+3}" 12, "{/Symbol t}_{i+4}" 13) \
					nomirror
unset ytics

set label 1 "N_{i1}" at 0.3,1.12
set label 2 "N_{i2}" at 2.8,1.12
set label 3 "N_{i3}" at 6.3,0.87
set label 4 "N_{i4}" at 10.8,0.785

set samples 1000
plot nik(0,1,x)+nik(2,2,x)+nik(5,3,x)+nik(9,4,x) notitle

set terminal postscript eps size 12cm,3cm enhanced
set output "ni1234.eps"
replot

