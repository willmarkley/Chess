function possibleMoves = getPawnMoves(position, currentBoard)
% getPawnMoves(position, currentBoard) 
% Accepts as parameters a position
% object and a board object, returning an array of position objects that
% are all of the possible moves for a pawn at the specified location in the
% current board. 

    numberofMoves = 1; %a variable to keep track of the index in the possibleMoves array
    possibleMoves = {}; %initialize the possibleMoves cellarray
          
    position = loc(position); 
    
    
    %White pawn moves upward
    if currentBoard(position(1),position(2)) > 0
        %If pawn is in starting row, checks the two possible moves
        if position(1) == 7
            for irow = 5:6
                if currentBoard(irow,position(2)) == 0 && currentBoard(6,position(2)) == 0
                    possibleMoves{numberofMoves}(1) = position(1);
                    possibleMoves{numberofMoves}(2) = position(2);
                    possibleMoves{numberofMoves}(3) = irow;
                    possibleMoves{numberofMoves}(4) = position(2);
                    possibleMoves{numberofMoves}(5) = 0;
                    numberofMoves  = numberofMoves + 1;
                end
            end
        %If pawn is not in starting position, checks the square in front of it.
        elseif currentBoard(position(1)-1, position(2)) == 0
                possibleMoves{numberofMoves}(1) = position(1);
                possibleMoves{numberofMoves}(2) = position(2);
                possibleMoves{numberofMoves}(3) = position(1)-1;
                possibleMoves{numberofMoves}(4) = position(2);
                possibleMoves{numberofMoves}(5) = 0;
        end
    end
    
    %Black pawn moves downward
    
   if currentBoard(position(1),position(2)) < 0
        %If pawn is in starting row, checks the two possible moves
        if position(1) == 2
            for irow = 3:4
                if currentBoard(irow,position(2)) == 0 && currentBoard(3,position(2)) == 0
                    possibleMoves{numberofMoves}(1) = position(1);
                    possibleMoves{numberofMoves}(2) = position(2);
                    possibleMoves{numberofMoves}(3) = irow;
                    possibleMoves{numberofMoves}(4) = position(2);
                    possibleMoves{numberofMoves}(5) = 0;
                    numberofMoves  = numberofMoves + 1;
                end
            end
        %If pawn is not in starting position, checks the square in front of it.
        elseif currentBoard(position(1)+1, position(2)) == 0
                possibleMoves{numberofMoves}(1) = position(1);
                possibleMoves{numberofMoves}(2) = position(2);
                possibleMoves{numberofMoves}(3) = position(1)+1;
                possibleMoves{numberofMoves}(4) = position(2);   
                possibleMoves{numberofMoves}(5) = 0;
        end
    end
 
      