decl
	integer i,j,status1, status2,fdin, fdout;
enddecl
integer main(){
	status1 = Create("random.dat");
	status2	= Create("result.dat");
	
	
	fdin = Open("random.dat");
	fdout = Open("result.dat");
	i = 0;
	while(i<1000) do
		status1 = Write(fdin,i);
		i = i+1;
	endwhile;
	
	i = 0;
	
	status1 = Seek(fdin,999);
	
	while(i<1000)	do
		status1 = Read(fdin, j);
		status2 = Seek(fdin, 1000-i-1);
		status1 = Write(fdout, j);	
		i = i+1;
	endwhile;
	
	status1 = Close(fdin);
	status2 = Close(fdout);
			
			
	return 0;
}
