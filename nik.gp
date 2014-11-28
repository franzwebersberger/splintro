# bsplines of order k >= 1

dti(i,j) = ti(i)==ti(j) ? 1.0 : ti(i)-ti(j) 
ni1(i,t) = (ti(i)<=t && t<ti(i+1)) ? 1.0 : 0.0
nik(i,k,t) = (k==1) ? ni1(i,t) : (t-ti(i))*nik(i,k-1,t)/dti(i+k-1,i) + (ti(i+k)-t)*nik(i+1,k-1,t)/dti(i+k,i+1)

