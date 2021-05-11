
if(IA == false)
{
	if(Attack){
		if((objParts.Select != id || Rounds != global.Round))exit;
	}
	if(Step = 0){
		var t = instance_create_layer(x+64,y+32,layer,objBox);
		t.Color = sprite_index;
		var t = instance_create_layer(x+64,y-32,layer,objBox);
		t.Color = sprite_index;
		var t = instance_create_layer(x-64,y+32,layer,objBox);
		t.Color = sprite_index;
		var t = instance_create_layer(x-64,y-32,layer,objBox);
		t.Color = sprite_index;
		var t = instance_create_layer(x+32,y+64,layer,objBox);
		t.Color = sprite_index;
		var t = instance_create_layer(x-32,y+64,layer,objBox);
		t.Color = sprite_index;
		var t = instance_create_layer(x+32,y-64,layer,objBox);
		t.Color = sprite_index;
		var t = instance_create_layer(x-32,y-64,layer,objBox);
		t.Color = sprite_index;
		Step++;
	}
}
else
{
	if(objIA.Piece != id || Rounds != global.Round)exit;
	if(Step = 0){
		instance_destroy(objBox)
		Box = false
		var t = instance_create_layer(x+64,y+32,layer,objBox);
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x+64,y-32,layer,objBox);
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x-64,y+32,layer,objBox);
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x-64,y-32,layer,objBox);
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x+32,y+64,layer,objBox);
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x-32,y+64,layer,objBox);
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x+32,y-64,layer,objBox);
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		var t = instance_create_layer(x-32,y-64,layer,objBox);
		t.Color = sprite_index;
		t.Box = true
		t.Id = id
		Step++;
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
		objIA.Return = false;
		objIA.Step = 1
		exit;
	}
}