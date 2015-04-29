integer main()
{
  integer status,third,cpid,pid,childpid,j,i;
  cpid=Fork();

  if(cpid == -2) then	//child
	status=Wait(Getppid());
	j=4;
	print("CPSTART");		
	while(j<7) do
		if(j==7) then
			pid=Signal();
		endif;
		print(j);
		j=j+1;
	endwhile;

  else
	i=1;
	print("PPSTART");
	while(i<9) do
		if(i==4) then
			i=7;
			print("PPPAUSE");
			pid=Wait(cpid);
		endif;		
		print(i);
		i=i+1;
	endwhile;
  endif;
return 0;
}
