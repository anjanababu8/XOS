integer main()
{
string a;
integer pid;
integer r;

	while(1==1) do
		print("Enter quit to quit console");
		read(a);
		if (a=="quit") then
			Exit();
		endif;

		pid=Fork();

		if (pid==-2) then //child process
			r=Exec(a);
		endif;
		if (pid==-1) then
			  print("Error");
		else
   			r=Wait(pid);
   			print("Waiting over");
		endif;
endwhile;

return 0;
}
