decl
	integer a,i,x;
enddecl
integer main(){
	a = Create("random.dat");
	a = Open("random.dat");
	i = 1;
	
	while( i <= 2048 ) do
		x = Write(a,(i*137) % 2048);
		i = i + 1;
	endwhile;
	
	x = Close(a);
	return 0;
}
