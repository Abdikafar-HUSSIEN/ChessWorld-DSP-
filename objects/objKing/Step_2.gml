
if(IA == false)
{
	if(Attack){
		if((objParts.Select != id || Rounds != global.Round))exit;
	}
	if(Step = 0)
	{
		Step++;
		var t = instance_create_layer(x+32,y,layer,objBox)
		t.Color = sprite_index;
		var t = instance_create_layer(x-32,y,layer,objBox)
		t.Color = sprite_index;
		var t = instance_create_layer(x,y+32,layer,objBox)
		t.Color = sprite_index;
		var t = instance_create_layer(x,y-32,layer,objBox)
		t.Color = sprite_index;
		var t = instance_create_layer(x-32,y-32,layer,objBox)
		t.Color = sprite_index;
		var t = instance_create_layer(x-32,y+32,layer,objBox)
		t.Color = sprite_index;
		var t = instance_create_layer(x+32,y+32,layer,objBox)
		t.Color = sprite_index;
		var t = instance_create_layer(x+32,y-32,layer,objBox)
		t.Color = sprite_index;
	}
}
else
{
	
	if(Rounds != global.Round)exit;
	
	var _list = ds_list_create ();
	var col = collision_rectangle_list(x-32,y-32,x+64-1,y+64-1,objPiece,true,true,_list,false);
	
	if(col > 1){
		Parts[0] = -1
		I = 0
		for(var i = 0;i < ds_list_size(_list);i++){
			var piece = _list[| i]
			
			if(piece.sprite_index != sprite_index){
				Parts[I] = piece
				I++;
			}
		}
		
		if(Parts[0] != -1){
			var find = Parts[irandom(array_length(Parts)-1)]
			
			x = find.x
			y = find.y
			instance_destroy(objBox)
			instance_destroy(find)
			Box = true
			global.Round = !global.Round
			objIA.Return = false;
			objIA.Step = 1
			ds_list_destroy (_list);
			exit;
		}
	}
	
	if(!Skip){
		if(objIA.Piece != id)exit;
	}
	
	if(Step = 0)
	{
		instance_destroy(objBox)
		Box = false
		Step++;
		var t = instance_create_layer(x+32,y,layer,objBox)
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x-32,y,layer,objBox)
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x,y+32,layer,objBox)
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x,y-32,layer,objBox)
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x-32,y-32,layer,objBox)
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x-32,y+32,layer,objBox)
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x+32,y+32,layer,objBox)
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x+32,y-32,layer,objBox)
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		exit;
	}
	
	if(!instance_exists(objBox)){
		
		objIA.Step = 1
		exit;
	}
	
	if(Box == false){
		var number = instance_number(objBox)-1
		var find = instance_find(objBox,irandom(number))
		
		x = find.x
		y = find.y
		instance_destroy(objBox)
		Box = true
		global.Round = !global.Round
		objIA.Step = 1
	}
}