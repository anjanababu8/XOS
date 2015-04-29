integer main(){
	string input;
	integer cpid;
	integer a;
	integer p;
	while(1==1) do
		print("Enter the file name OR "exit" to terminate");
		read(input);
		if( input == "exit") then
			print("Terminated......");
			Exit();
		else
			cpid = Fork();
			if(cpid == -1) then
				print("Fork failure");
			endif;
			if(cpid == -2) then                   // In child
				p = Getpid();
				a = Wait(p);
				a = Exec(input);
				a = Signal();
			endif;
		endif;
	endwhile;
	return 0;
}




