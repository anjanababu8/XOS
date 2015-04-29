integer main(){
 integer rv, a,b,c, fd, i,n;
	
 a = Fork();
 if(a == -2) then
	b = Fork();
	if(b == -2) then
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
	else
		rv = Wait(b);
		rv = Exec("sortodd.xsm");
	endif;
 else	
	c = Fork();
	if(c == -2) then
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
	else
		rv = Wait(c);
		rv = Exec("sorteven.xsm");
	endif;
	rv = Exec("msort.xsm"); 
 endif;
 return 0;
}
