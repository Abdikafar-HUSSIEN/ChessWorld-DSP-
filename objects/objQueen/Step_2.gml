

if(IA == false)
{
	if(Attack){
		if((objParts.Select != id || Rounds != global.Round))exit;
	}

	if(Step = 0)
	{
		Step++;
		for(var i = 1; i < array_length(Move[0]);i++){
			for(var j = 1; j < array_length(Move[0]);j++){
				if(CollisionUp){
					var t = instance_create_layer(x + Move[i,0],y + Move[0,i],layer,objBox)
					t.Color = sprite_index
				}
				if(position_meeting(x + Move[i,0],y + Move[0,i],objPiece)){
					CollisionUp = false
				}
		
				if(CollisionLeft){
					var t = instance_create_layer(x + Move[0,i],y + Move[i,0],layer,objBox)
					t.Color = sprite_index
				}
				if(position_meeting(x + Move[0,i],y + Move[i,0],objPiece)){
					CollisionLeft = false
				}
		
				if(CollisionRight){
					var t = instance_create_layer(x + Move[0,i]*-1,y + Move[i,0]*-1,layer,objBox)
					t.Color = sprite_index
				}
				if(position_meeting(x + Move[0,i]*-1,y + Move[i,0]*-1,objPiece)){
					CollisionRight = false
				}
		
				if(CollisionDown){
					var t = instance_create_layer(x + Move[i,0]*-1,y + Move[0,i]*-1,layer,objBox)
					t.Color = sprite_index
				}
				if(position_meeting(x + Move[i,0]*-1,y + Move[0,i]*-1,objPiece)){
					CollisionDown = false
				}
			
			
				if(CollisionUpD){
					var t = instance_create_layer(x + MoveD[i,0],y + MoveD[0,i],"Piece",objBox);
					t.Color = sprite_index
				}
				if(position_meeting(x + MoveD[i,0],y + MoveD[0,i],objPiece)){
					CollisionUpD = false;
				}
		
				if(CollisionDownD){
					var t = instance_create_layer(x + MoveD[i,0],y + MoveD[0,i]*-1,"Piece",objBox);
					t.Color = sprite_index
				}
				if(position_meeting(x + MoveD[i,0],y + MoveD[0,i]*-1,objPiece)){
					CollisionDownD = false;
				}
		
				if(CollisionRightD){
					var t = instance_create_layer(x + MoveD[i,0]*-1,y + MoveD[0,i],"Piece",objBox);
					t.Color = sprite_index
				}
				if(position_meeting(x + MoveD[i,0]*-1,y + MoveD[0,i],objPiece)){
					CollisionRightD = false;
				}
		
				if(CollisionLeftD){
					var t = instance_create_layer(x + MoveD[i,0]*-1,y + MoveD[0,i]*-1,"Piece",objBox);
					t.Color = sprite_index
				}
				if(position_meeting(x + MoveD[i,0]*-1,y + MoveD[0,i]*-1,objPiece)){
					CollisionLeftD = false;
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
		instance_destroy(objBox)
		Step++;
		for(var i = 1; i < array_length(Move[0]);i++){
			if(CollisionUp){
				_box = instance_create_layer(x + Move[i,0],y + Move[0,i],layer,objBox)
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + Move[i,0],y + Move[0,i],objPiece)){
				CollisionUp = false
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
		
			if(CollisionLeft){
				_box = instance_create_layer(x + Move[0,i],y + Move[i,0],layer,objBox)
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + Move[0,i],y + Move[i,0],objPiece)){
				CollisionLeft = false
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
		
			if(CollisionRight){
				_box = instance_create_layer(x + Move[0,i]*-1,y + Move[i,0]*-1,layer,objBox)
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + Move[0,i]*-1,y + Move[i,0]*-1,objPiece)){
				CollisionRight = false
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
		
			if(CollisionDown){
				_box = instance_create_layer(x + Move[i,0]*-1,y + Move[0,i]*-1,layer,objBox)
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + Move[i,0]*-1,y + Move[0,i]*-1,objPiece)){
				CollisionDown = false
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
			
			
			if(CollisionUpD){
				_box = instance_create_layer(x + MoveD[i,0],y + MoveD[0,i],"Piece",objBox);
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + MoveD[i,0],y + MoveD[0,i],objPiece)){
				CollisionUpD = false;
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
		
			if(CollisionDownD){
				_box = instance_create_layer(x + MoveD[i,0],y + MoveD[0,i]*-1,"Piece",objBox);
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + MoveD[i,0],y + MoveD[0,i]*-1,objPiece)){
				CollisionDownD = false;
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
		
			if(CollisionRightD){
				_box = instance_create_layer(x + MoveD[i,0]*-1,y + MoveD[0,i],"Piece",objBox);
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + MoveD[i,0]*-1,y + MoveD[0,i],objPiece)){
				CollisionRightD = false;
				_box.Box = true;
				_box.Id = id;
				Box = true;
			}
		
			if(CollisionLeftD){
				_box = instance_create_layer(x + MoveD[i,0]*-1,y + MoveD[0,i]*-1,"Piece",objBox);
				_box.Color = sprite_index;
				Box = false;
			}
			if(position_meeting(x + MoveD[i,0]*-1,y + MoveD[0,i]*-1,objPiece)){
				CollisionLeftD = false;
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
		exit;
	}
}