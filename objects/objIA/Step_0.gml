
if(Rounds != global.Round)exit;

Instance = instance_number(objPiece)-1

if(Step > 0)
{
	instance_destroy(objBox)
	Ia = 0

	for(var i = 0; i < Instance; i++){
		var Find = instance_find(objPiece,i)
		if(Find.sprite_index == sprPiecesB){
			PartsIA[Ia] = Find
			Ia++;
		}
	}
	
	Piece = PartsIA[irandom_range(0,array_length(PartsIA)-1)]
	if(instance_exists(Piece))Piece.Box = false
	with(Piece)
	{
		event_user(0)
	}
	
	Step--;
} 