decl
	integer i,j,k,fd,r,c,cc,d;
	string fname;
enddecl
integer main(){
	r = Create("3.dat");
	fd = Open("3.dat");
	i = 1;
	while(i<=10)do
		r = Write(fd,i);
		i = i+1;
	endwhile;
	c = Fork();
       	if(c==-2)then
		cc = Fork();
		if(cc==-2)then
			i = 200;
			while(i<=220)do
				r = Write(fd,i);
				i = i + 1;
				d = 1;
				while(d<=10)do
					d=d+1;
				endwhile;
			endwhile;
		else
			k = 100;
			while(k<=130)do
				r = Write(fd,k);
				k = k + 1;
			endwhile;
			r = Wait(cc);
			r = Close(fd);
			Exit();
                endif;
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
