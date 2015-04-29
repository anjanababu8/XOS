integer main(){
 integer rv, cpid,ccpid, fd, i,n;
	
 cpid = Fork();
 if(cpid == -2) then
	rv = Create("odd.dat");
	fd = Open("odd.dat");
	
	i = 0;
	while(i<1000) do
		n = (i*137) % 1000;
		if(n%2 == 0)then
		 	n = (n+1)%1000;
		endif;
		rv = Write(fd,n);
		i = i + 1;
	endwhile;

	rv = Close(fd);
	rv = Exec("sortodd.xsm");
 else	
	rv = Wait(cpid);
	ccpid = Fork();
	if(ccpid == -2) then
		rv = Create("even.dat");
		fd = Open("even.dat");
		
		i = 0;
		while(i<1000) do
			n = (i*137) % 1000;
			if(n%2 != 0)then
			 	n = (n+1)%1000;
			endif;
			rv = Write(fd,n);
			i = i + 1;
		endwhile;
		rv = Close(fd);
		rv = Exec("sorteven.xsm");
	else
		rv = Wait(ccpid);
 		rv = Exec("msort.xsm");
	endif;
 endif;
 
 return 0;
}
