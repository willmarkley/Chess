function possibleMoves = getQueenMoves(position, currentBoard)

          
    %% Combine rook and bishop possible moves
    possibleMoves = [getRookMoves(position, currentBoard), getBishopMoves(position, currentBoard)];
    
    