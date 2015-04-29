decl
	integer i,j,r,fd,x,y,g,a,b,partition(integer s,e),quicksort(integer s,e),swap(integer p1,p2),pivot,q;
enddecl

integer swap(integer p1,p2){
	g = Seek(fd,p1);
	g = Read(fd,a);
	g = Seek(fd,p2);
	g = Read(fd,b);
	
	g = Seek(fd,p1);
	g = Write(fd,a);
	g = Seek(fd,p2);
	g = Write(fd,b);	

	return 0;
}
integer partition(integer s,e){
	g = Seek(fd,e);
	g = Read(fd,pivot);
	i = s-1;
	j = s;
	while(j<e-1)do
		g = Seek(fd,j);
		g = Read(fd,x);		
		if(x<=pivot)then
			i=i+1;
			g=swap(i,j);
		endif;
	endwhile;
	g=swap(i+1,e);	
	return (i+1);	
}

integer quicksort(integer s,e){
	if(s<e) then
		q = partition(s,e);
		g = quicksort(s,q-1);
		g = quicksort(q+1,e);
	endif;
	return 0;
}

integer main(){
	string fname;
	read(fname);
	fd = Open(fname);
	
	i = 10;
	while(i>0)do
		g = Write(fd,i);
		i = i - 1;
	endwhile;

	r = quicksort(1,10);
	r = Close(fd);	
	return 0;
}
