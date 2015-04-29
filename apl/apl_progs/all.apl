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

	print("Write Success");
	status = Write(fd,"hello");
	print(status);

	print("Write Success");
	status = Write(fd, "world");
	print(status);

	print("Seek Success");
	status = Seek(fd, 10);
	print(status);

	print("Seek Failure");
	status = Seek(fd, 1234);
	print(status);

	print("Read Success");
	status = Read(fd, a);
	print(status);
	print(a);
		
	print("Read Success");
	status = Read(fd, a);
	print(status);
	print(a);


	return 0;
}
