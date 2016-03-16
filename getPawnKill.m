function possibleMoves = getPawnKill(position, currentBoard)
% getPawnKill(position, currentBoard)
% Accepts as parameters a position object and a board object, returning an
% array of position objects that are all of the possible killing moves for
% a pawn at the specified location in the current board.

numberofMoves = 1; %a variable to keep track of the index in the possibleMoves array
possibleMoves = {}; %initialize the possibleMoves cellarray

position = loc(position);

%White pawn moves upward
if currentBoard(position(1),position(2)) > 0
    % Checks the adjacent diagonals in front of the pawn for enemy
    % pieces.
    
    if position(1)-1 <= 8 && position(2)-1 <= 8 && position(1)-1 > 0 && position(2)-1 > 0 && currentBoard(position(1)-1, position(2)-1) < 0 
       possibleMoves{numberofMoves}(1) = position(1);
       possibleMoves{numberofMoves}(2) = position(2);
       possibleMoves{numberofMoves}(3) = position(1)-1;
       possibleMoves{numberofMoves}(4) = position(2)-1;
       possibleMoves{numberofMoves}(5) = 1; %number of points gained
       numberofMoves  = numberofMoves + 1;
    end
    if position(1)-1 <= 8 && position(2)+1 <= 8 && position(1)-1 > 0 && position(2)+1 > 0 && currentBoard(position(1)-1, position(2)+1) < 0
        possibleMoves{numberofMoves}(1) = position(1);
        possibleMoves{numberofMoves}(2) = position(2);
        possibleMoves{numberofMoves}(3) = position(1)-1;
        possibleMoves{numberofMoves}(4) = position(2)+1;
        possibleMoves{numberofMoves}(5) = 1; %number of points gained
    end
end

%Black pawn moves downward
if currentBoard(position(1),position(2)) < 0
    % Checks the adjacent diagonals in front of the pawn for enemy
    % pieces.
    if  position(1)+1 <= 8 && position(2)-1 <= 8 && position(1)+1 > 0 && position(2)-1 > 0 && currentBoard(position(1)+1, position(2)-1) > 0
        possibleMoves{numberofMoves}(1) = position(1);
        possibleMoves{numberofMoves}(2) = position(2);
        possibleMoves{numberofMoves}(3) = position(1)+1;
        possibleMoves{numberofMoves}(4) = position(2)-1;
        possibleMoves{numberofMoves}(5) = 1; %number of points gained
        numberofMoves  = numberofMoves + 1;
    end
    if  position(1)+1 <= 8 && position(2)+1 <= 8 && position(1)+1 > 0 && position(2)+1 > 0 && currentBoard(position(1)+1, position(2)+1) > 0 
        possibleMoves{numberofMoves}(1) = position(1);
        possibleMoves{numberofMoves}(2) = position(2);
        possibleMoves{numberofMoves}(3) = position(1)+1;
        possibleMoves{numberofMoves}(4) = position(2)+1;
        possibleMoves{numberofMoves}(5) = 1; %number of points gained
    end
end
