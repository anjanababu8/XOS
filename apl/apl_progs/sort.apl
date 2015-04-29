decl
	integer i,j,status1, status2,fdin, fdout, a[2048], bubblesort();
enddecl

integer bubblesort()
{
	integer i,j,k;
	i=0;
	while (i < 2048) do
		j=0;
		while (j < 10-i-1) do
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
	status1 = Delete("evennum.xsm");
	status1 = Delete("myfile.dat");
	status1 = Create("input.dat");
	status2	= Create("sresult.dat");
	
	
	fdin = Open("sortinput.dat");
	fdout = Open("sortresult.dat");
	i = 2047;
	while(i>=0) do
		status1 = Write(fdin,i);
		i = i-1;
	endwhile;
	
	status1 = Close(fdin);
	status2 = Close(fdout);
	
	return 0;				
}


