decl
	integer status,fd;
	string a;
enddecl
integer main(){
	print("Success Create");
	status = Create("abc.dat");
	print(status);

	print("Open Success");
	fd = Open("abc.dat");
	print(fd);

	print("Seek Success");
	status = Seek(fd, 0);
	print(status);

	print("Read Success");
	status = Read(fd, a);
	print(status);
	print(a);

	return 0;
}
