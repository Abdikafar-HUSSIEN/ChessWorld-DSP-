

if(IA == false)
{
	if(Attack){
		if((objParts.Select != id || Rounds != global.Round))exit;
	}
	
	if(Step = 0){
		Step++;
		for(var i = 1; i < array_length(Move[0]);i++){
			for(var j = 1; j < array_length(Move[0]);j++){
				if(CollisionUp){
					var t = instance_create_layer(x + Move[i,0],y + Move[0,i],"Piece",objBox);
					t.Color = sprite_index
				}
				if(position_meeting(x + Move[i,0],y + Move[0,i],objPiece)){
					CollisionUp = false;
				}
		
				if(CollisionDown){
					var t = instance_create_layer(x + Move[i,0],y + Move[0,i]*-1,"Piece",objBox);
					t.Color = sprite_index
				}
				if(position_meeting(x + Move[i,0],y + Move[0,i]*-1,objPiece)){
					CollisionDown = false;
				}
		
				if(CollisionRight){
					var t = instance_create_layer(x + Move[i,0]*-1,y + Move[0,i],"Piece",objBox);
					t.Color = sprite_index
				}
				if(position_meeting(x + Move[i,0]*-1,y + Move[0,i],objPiece)){
					CollisionRight = false;
				}
		
				if(CollisionLeft){
					var t = instance_create_layer(x + Move[i,0]*-1,y + Move[0,i]*-1,"Piece",objBox);
					t.Color = sprite_index
				}
				if(position_meeting(x + Move[i,0]*-1,y + Move[0,i]*-1,objPiece)){
					CollisionLeft = false;
				}
			}
		}
	}
}
else
{
	if(objIA.Piece != id || Rounds != global.Round)exit;
	if(Step = 0){
		instance_destroy(objBox)
		Step++;
		for(var i = 1; i < array_length(Move[0]);i++){
			if(CollisionUp){
				_box = instance_create_layer(x + Move[i,0],y + Move[0,i],"Piece",objBox);
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + Move[i,0],y + Move[0,i],objPiece)){
				CollisionUp = false;
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
		
			if(CollisionDown){
				_box = instance_create_layer(x + Move[i,0],y + Move[0,i]*-1,"Piece",objBox);
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + Move[i,0],y + Move[0,i]*-1,objPiece)){
				CollisionDown = false;
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
		
			if(CollisionRight){
				_box = instance_create_layer(x + Move[i,0]*-1,y + Move[0,i],"Piece",objBox);
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + Move[i,0]*-1,y + Move[0,i],objPiece)){
				CollisionRight = false;
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
		
			if(CollisionLeft){
				_box = instance_create_layer(x + Move[i,0]*-1,y + Move[0,i]*-1,"Piece",objBox);
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + Move[i,0]*-1,y + Move[0,i]*-1,objPiece)){
				CollisionLeft = false;
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
		}
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
	}	
}