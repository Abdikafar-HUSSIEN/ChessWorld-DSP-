var piece = instance_place(x,y,objPiece)

if(piece){
	if(Color == piece.sprite_index){
		instance_destroy();
		exit;
	}
	
	if(Destroy) {instance_destroy();exit;}

	if(Box && global.Move = false){
		Id.Box = false
		Id.x = x
		Id.y = y
		global.Move = true
		instance_destroy(piece)
		global.Round = !global.Round
		objIA.Step = 1
		instance_destroy(objBox)
	}
}