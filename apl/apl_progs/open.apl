decl
	integer status;
enddecl
integer main(){
	status = Open("myfile.dat");
	print(status);
	status = Open("myfile2.dat");
	print(status);
	status = Open("myfile3.dat"); // invalid
	print(status);
	return 0;
}
