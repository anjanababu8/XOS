decl
	integer status;
enddecl
integer main(){
	status = Open("myfile.dat");
	print(Close(status));
	status = Open("myfile3.dat"); // invalid
	print(Close(status));
	return 0;
}
