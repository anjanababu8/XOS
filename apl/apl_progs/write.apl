decl
	integer status,status1;
enddecl
integer main(){
	status = Open("myfile.dat");
	print(status);
	status1 = Write(status,"anjana");
	print(status1);
	return 0;
}
