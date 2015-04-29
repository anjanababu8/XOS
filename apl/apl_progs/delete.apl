decl
	integer status;
enddecl
integer main(){
	
	status = Delete("evennum.xsm");
	print(status);
	status = Delete("myfile.dat");
	print(status);
	
	return 0;
}
