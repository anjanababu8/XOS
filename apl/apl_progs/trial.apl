integer main(){
	integer fd,j,rv;
	string fname;

	fname = "even.dat";

	rv = Create(fname);
	fd = Open(fname);	
	j = 1000;
	while(j>=1) do
		rv = Write(fd,j);
		j = j - 1;
	endwhile;
	j = Exec("sorteven.xsm");
	rv = Close(fd);
	return 0;
}
