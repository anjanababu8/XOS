	decl
		integer i,j,k,r,fd1,fd2,fd3,x,y;
	enddecl
	integer main(){
		r = Create("final.dat");
		fd3 = Open("final.dat");

		fd1 = Open("odd.dat");
		fd2 = Open("even.dat");

		i = 0;
		j = 0;
		while(i<1000 && j<1000) do 		
			r = Seek(fd1,i);
			r = Seek(fd2,j);

			r = Read(fd1,x);
			r = Read(fd2,y);

			if(x<=y) then
				r = Write(fd3,x);
				i = i + 1;
			else
				r = Write(fd3,y);
				j = j + 1;
			endif;
		endwhile;	
		if(i>=1000) then
			while(j<1000) do
				r = Seek(fd2,j);
				r = Read(fd2,y);
				r = Write(fd3,y);
				j = j + 1;
			endwhile;
		else
			while(i<1000) do
				r = Seek(fd1,i);
				r = Read(fd1,x);
				r = Write(fd3,x);
				i = i + 1;
			endwhile;
		endif;
		r = Close(fd1);	
		r = Close(fd2);	
		r = Close(fd3);	
		return 0;
}
