Color = noone
Destroy = false
Box = false
global.Move = false
Id = noone 

if(y < 0 || y >= 256){instance_destroy();}

if(x < 0 || x >= 256){instance_destroy();}

piece = instance_place(x,y,objPiece)

if(piece){
	if(Destroy) {instance_destroy();exit;}
}