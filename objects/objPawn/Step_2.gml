
if(IA == false)
{
	if(Attack){
		if((objParts.Select != id || Rounds != global.Round))exit;
	}
	
	if(Step = 0)
	{
		instance_destroy(objBox)
		Step++;
		for(var i = 1; i < array_length(Move[0]);i++){
			if(Face){
				if(CollisionUp){
					var t = instance_create_layer(x + Move[i,0],y + Move[0,i],"Piece",objBox);
					t.Color = sprite_index;
					t.Destroy = true
				}
				if(position_meeting(x + Move[i,0],y + Move[0,i],objPiece)){
					CollisionUp = false
				}
			
				if(position_meeting(x-32,y-32,objPiece)){
					var t = instance_create_layer(x-32,y-32,"Piece",objBox);
					t.Color = sprite_index;
				}
			
				if(position_meeting(x+32,y-32,objPiece)){
					var t = instance_create_layer(x+32,y-32,"Piece",objBox);
					t.Color = sprite_index;
				}
			}else{
				if(CollisionDown){
					var t = instance_create_layer(x - Move[i,0],y - Move[0,i],"Piece",objBox);
					t.Color = sprite_index;
					t.Destroy = true
				}
				if(position_meeting(x - Move[i,0],y - Move[0,i],objPiece)){
					CollisionDown = false
				}
			
				if(position_meeting(x-32,y+32,objPiece)){
					var t = instance_create_layer(x-32,y+32,"Piece",objBox);
					t.Color = sprite_index;
				}
			
				if(position_meeting(x+32,y+32,objPiece)){
					var t = instance_create_layer(x+32,y+32,"Piece",objBox);
					t.Color = sprite_index;
				}
			}
		}
	}
}
else
{
	if(objIA.Piece != id || Rounds != global.Round)exit;
	if(Step = 0)
	{
		Step++;
		for(var i = 1; i < array_length(Move[0]);i++){
			if(Face){
				if(CollisionUp){
					_box = instance_create_layer(x + Move[i,0],y + Move[0,i],"Piece",objBox);
					_box.Color = sprite_index;
					_box.Destroy = true
					_box.Id = id
					Box = false;
				}
				if(position_meeting(x + Move[i,0],y + Move[0,i],objPiece)){
					CollisionUp = false
					Box = true
					_box.Box = true
					_box.Id = id
				}
				
				var Ins = instance_place(x-32,y-32,objPiece)
				var Ins2 = instance_place(x+32,y-32,objPiece)
				if(Ins && Ins.sprite_index != sprite_index){
					x = Ins.x
					y = Ins.y
					instance_destroy(Ins)
					_box.Box = false
					Box = true
					global.Round = !global.Round
					objIA.Return = false;
					objIA.Step = 1
				}
			
				if(Ins2 && Ins2.sprite_index != sprite_index){
					x = Ins2.x
					y = Ins2.y
					instance_destroy(Ins2)
					_box.Box = false
					Box = true
					global.Round = !global.Round
					objIA.Return = false;
					objIA.Step = 1
				}
				exit;
			}
			else{
				if(CollisionDown){
					_box = instance_create_layer(x - Move[i,0],y - Move[0,i],"Piece",objBox);
					_box.Color = sprite_index;
					_box.Destroy = true;
					_box.Id = id
					Box = false;
				}
				if(position_meeting(x - Move[i,0],y - Move[0,i],objPiece)){
					CollisionDown = false
					Box = true;
					_box.Box = true
					_box.Id = id
				}
				
				var Ins = instance_place(x-32,y+32,objPiece)
				var Ins2 = instance_place(x+32,y+32,objPiece)
				
				if(Ins && Ins.sprite_index != sprite_index){
					x = Ins.x
					y = Ins.y
					instance_destroy(Ins)
					_box.Box = false
					Box = true
					global.Round = !global.Round
					objIA.Return = false;
					objIA.Step = 1
					instance_destroy(objBox)
				}
			
				if(Ins2 && Ins2.sprite_index != sprite_index){
					x = Ins2.x
					y = Ins2.y
					instance_destroy(Ins2)
					_box.Box = false
					Box = true
					global.Round = !global.Round
					objIA.Return = false;
					objIA.Step = 1
					instance_destroy(objBox)
				}
				exit;
			}
		}
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
	}
}
