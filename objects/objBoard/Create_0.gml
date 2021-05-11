global.Round = true
randomize();

var NewPiece = function (yY, xX, Obj)
{
	var Piece = instance_create_layer(xX * 32, yY * 32, "Piece", Obj);
	
	return Piece;
}

for (var i = 0; i < 8; i ++)
{
	for (var j = 0; j < 8; j ++)
	{
		Board[i, j] = noone;
	}
}

Board[0, 0] = NewPiece(0, 0, objRook);
Board[0, 1] = NewPiece(0, 1, objKnight);
Board[0, 2] = NewPiece(0, 2, objBishop);
Board[0, 4] = NewPiece(0, 3, objQueen);
Board[0, 3] = NewPiece(0, 4, objKing);
Board[0, 5] = NewPiece(0, 5, objBishop);
Board[0, 6] = NewPiece(0, 6, objKnight);
Board[0, 7] = NewPiece(0, 7, objRook);

Board[1, 0] = NewPiece(1, 0, objPawn);
Board[1, 1] = NewPiece(1, 1, objPawn);
Board[1, 2] = NewPiece(1, 2, objPawn);
Board[1, 3] = NewPiece(1, 3, objPawn);
Board[1, 4] = NewPiece(1, 4, objPawn);
Board[1, 5] = NewPiece(1, 5, objPawn);
Board[1, 6] = NewPiece(1, 6, objPawn);
Board[1, 7] = NewPiece(1, 7, objPawn);

Board[6, 0] = NewPiece(6, 0, objPawn);
Board[6, 1] = NewPiece(6, 1, objPawn);
Board[6, 2] = NewPiece(6, 2, objPawn);
Board[6, 3] = NewPiece(6, 3, objPawn);
Board[6, 4] = NewPiece(6, 4, objPawn);
Board[6, 5] = NewPiece(6, 5, objPawn);
Board[6, 6] = NewPiece(6, 6, objPawn);
Board[6, 7] = NewPiece(6, 7, objPawn);

Board[7, 0] = NewPiece(7, 0, objRook);
Board[7, 1] = NewPiece(7, 1, objKnight);
Board[7, 2] = NewPiece(7, 2, objBishop);
Board[7, 4] = NewPiece(7, 3, objQueen);
Board[7, 3] = NewPiece(7, 4, objKing);
Board[7, 5] = NewPiece(7, 5, objBishop);
Board[7, 6] = NewPiece(7, 6, objKnight);
Board[7, 7] = NewPiece(7, 7, objRook);

for (var i = 0; i < 2; i ++)
{
	for (var j = 0; j < 8; j ++)
	{
		Board[i, j].sprite_index = sprPiecesB;
		Board[i, j].Rounds = false;
		Board[i, j].Face = false;
		if(room = rmBoardIA){
			Board[i, j].IA = true;
		}
	}
}