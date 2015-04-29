integer main(){
	integer c1,c2,cc1,cc2,a,x,i,d,c;
	c1 = Fork();
	
	if(c1==-2)then
		cc1 = Fork();
		if(cc1==-2)then
			a = Create("even.dat");
			d = Open("even.dat");
			i=0;
			while(i<1000)do
				x=i*137%1000;
				if(x%2==0)then
					c = Write(d,x);
				else
					c = Write(d,x+1);
				endif;
				i=i+1;
			endwhile;
			a = Close(d);
		else
			a = Wait(cc1);
			print("Even Created");
			a = Exec("sorteven.xsm");
		endif;
	else
		a = Wait(c1);
		print("Even Sorted");
		c2 = Fork();
		if(c2==-2)then
			cc2=Fork();
			if(cc2==-2)then
				a = Create("odd.dat");
				d = Open("odd.dat");
				i=0;
				while(i<1000)do
					x=i*137%1000;
					if(x%2==0)then
						c = Write(d,x+1);
					else
						c = Write(d,x);
					endif;
					i=i+1;
				endwhile;
				a = Close(d);
			else
				a = Wait(cc2);
				print("Odd Created");
				a = Exec("sortodd.xsm");
			endif;
		else
			a = Wait(c2);
			print("Merge Now");
			a = Exec("msort.xsm");
		endif;
		
	endif;




return 0;
}
