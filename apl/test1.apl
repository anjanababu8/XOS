decl
	integer i,j,fd,r,c;
	string fname;
enddecl
integer main(){
	r = Create("1.dat");
	fd = Open("1.dat");
	i = 1;
	while(i<=10)do
		r = Write(fd,i);
		i = i+1;
	endwhile;
	c = Fork();
       	if(c==-2)then
		i = 100;
		while(i<=200)do
			r = Write(fd,i);
			i = i + 1;
		endwhile;
                r = Close(fd);
	else
		j = 50;
		while(j<=70)do
			r = Write(fd,j);
			j = j + 1;
		endwhile;
		r = Wait(c);
                //r = Seek(fd,0);
                //print all the contents of pq.dat
	endif;
	return 0;
}
