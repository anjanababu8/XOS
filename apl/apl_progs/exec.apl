integer main()
{	
	integer a;
	a = Exec("oddnum.xsm");
	if(a == -1) then
		print("not execute");
	else
		print("executed");
	endif;
	return 0;
}
