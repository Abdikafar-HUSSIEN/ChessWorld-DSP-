var InstancePosition = instance_position(mouse_x,mouse_y,objPiece),
ButtonLeft = mouse_check_button_pressed(mb_left),
InstanceBox = instance_position(mouse_x,mouse_y,objBox)

if(ButtonLeft){
	if(Select != noone && InstanceBox){
		Select.x = InstanceBox.x
		Select.y = InstanceBox.y
		
		if(Select.image_index == 0 || Select.image_index == 0){
			Select.Move[2,0] = 0
			Select.Move[0,2] = 0
		}
		
		if(InstancePosition)
		{
			instance_destroy(InstancePosition);
		}
		
		instance_destroy(objBox)
		Select = noone
		global.Round = !global.Round
	}
	
	if(InstancePosition && InstancePosition.IA = false){
		if(instance_exists(objBox))instance_destroy(objBox);
		Select = InstancePosition;
		with(Select){
			event_user(0)
		}
	}
}