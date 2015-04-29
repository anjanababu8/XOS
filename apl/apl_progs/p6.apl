integer main(){
	integer fd,j,rv;
	string fname;

	fname = "a6.dat";

	rv = Create(fname);
	fd = Open(fname);	
	j = 1;
	while(j<=1000) do
		rv = Write(fd,6 + 100*j);
		j = j + 1;
	endwhile;
	rv = Close(fd);
	return 0;
}
