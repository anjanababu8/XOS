decl
	integer g,fd1,fd2,r,c;
	string fname;
enddecl
integer main(){
	print("Filename");
	read(fname);
	g = Create(fname);
	c = Fork();
	if(c==-2) then		
		fd1 = Open(fname);
		g = Write(fd1,1);
		g = Write(fd1,2);
	else
		g = Wait(c);
		fd2 = Open(fname);
		g = Write(fd2,3);
		g = Write(fd2,4);
	endif;	
	g = Close(fd1);
	g = Close(fd2);
	return 0;
}
