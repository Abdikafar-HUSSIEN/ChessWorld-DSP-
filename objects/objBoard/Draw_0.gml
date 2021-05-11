for(var i = 0;i < 8;i++){
	for(var j = 0;j < 8;j++){
		
		if ( (i mod 2 == 0 && j mod 2 == 0) || (i mod 2 == 1 && j mod 2 == 1) )
		{
			draw_set_color($173e6d);
			draw_rectangle(32*i,32*j,32*i+32,32*j+32,false)
		}else
		{
			draw_set_color($80c3f0);
			draw_rectangle(32*i,32*j,32*i+32,32*j+32,false)
		}
	}
}