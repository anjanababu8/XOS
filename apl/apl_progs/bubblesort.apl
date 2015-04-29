decl
	integer i,j,status1, status2,fdin, fdout, a[10], bubblesort(n),n;
enddecl

integer bubblesort(Integer n)
{
	integer i,j,k;
	i=0;
	while (i < n) do
		j=0;
		while (j < n-i-1) do
			if (a[j] < a[j+1]) then
				k=a[j];
				a[j]=a[j+1];
				a[j+1]=k;
			endif;
			j=j+1;
		endwhile;
		i=i+1;
	endwhile;	
	return 0;
}


integer main(){
	n = 0;
	read(a[n]);
	while(a[n]!=0) do
		n = n + 1;
		read(a[n]);
	endwhile;
	n = n - 1; // n
	i = bubblesort(n);
	i = 0;

	status1 = Create("new.dat");

	fdin = Open("new.dat");
	
	while(i < n) do 
		a = Write(fdin,a[i]);
		i = i + 1;
	endwhile; 
	a = Close(fdin);	
	return 0;				
}


