integer main() {
	string input;
	integer a, fd, i, b, j, s;
	a = Create("pqra");
	fd = Open("pqra");
	i=0;
	while(i<16) do
		b = Write(fd, i);
		i = i + 1;
	endwhile; 
	s=0;
	a = Fork();
	if(a==-2) then
		a = Fork();
		if(a!=-2) then
			i = 50;
			while(i<76) do
				b = Write(fd, i);
				i = i + 1;
			endwhile;
		else
			i = 100;
			while(i<120) do
				b = Write(fd, i);
				i = i + 1;
				j = 1;
				while(j<5) do
					j = j + 1;
				endwhile;
			endwhile;
		endif;
	else
		i = 20;
		while(i<41) do
			b = Write(fd, i);
			i = i + 1;
		endwhile;
		
		
		
		a = Wait(a);	
		a = Seek(fd, 0);
		i = 0;
		while(i<150) do
			b = Read(fd, input);
			print(input);
			i = i + 1;
		endwhile;
	endif;
	return (0);	
}
