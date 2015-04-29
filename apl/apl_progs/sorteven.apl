decl
	integer i,j,r,fd,x,y;
enddecl
integer main(){
	fd = Open("even.dat");
	
	i = 0;
	while( i < 1000 ) do 		
		r = Seek(fd,i);
		r = Read(fd,x);

		j = 0;
		while( j < 1000 - i - 1) do 
			r = Seek(fd,i+j+1);
			r = Read(fd,y);
			
			if(x > y) then
				r = Seek(fd, i);
				r = Write(fd,y);
				r = Seek(fd, i+j+1);
				r = Write(fd,x);

				r = x;
				x = y;
				y = r;				
			endif;
			j = j + 1;
		endwhile;		
		i = i + 1;
	endwhile;	
	r = Close(fd);	
	return 0;
}
