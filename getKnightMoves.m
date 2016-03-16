function possibleMoves = getKnightMoves(position, currentBoard)
    
    %% Initialize possibleMoves cellarray
    numberOfMoves = 1;   
    possibleMoves = {};
    
    %% Convert the postion from string to matrix index
    position  = loc(position);
    
    %% Create cell array of all available moves
    availableMoves = {[position, position(1)-2, position(2)-1],[position, position(1)-2, position(2)+1],...
                      [position, position(1)-1, position(2)-2],[position, position(1)-1, position(2)+2],...
                      [position, position(1)+1, position(2)-2],[position, position(1)+1, position(2)+2],...
                      [position, position(1)+2, position(2)-1],[position, position(1)+2, position(2)+1]};

    %% Check which available moves are legal
    if currentBoard(position(1), position(2)) > 0 % white piece
        for ix = 1:8
            if availableMoves{ix}(3) <= 8 && availableMoves{ix}(3) > 0 && availableMoves{ix}(4) <= 8 && availableMoves{ix}(4) > 0 && ...
            currentBoard(availableMoves{ix}(3), availableMoves{ix}(4)) <= 0
                possibleMoves{numberOfMoves} = availableMoves{ix};
                possibleMoves{numberOfMoves}(5) = abs(currentBoard(availableMoves{ix}(3), availableMoves{ix}(4)));
                numberOfMoves = numberOfMoves + 1;
            end
        end
    else % black piece
        for ix = 1:8
            if availableMoves{ix}(3) <= 8 && availableMoves{ix}(3) > 0 && availableMoves{ix}(4) <= 8 && availableMoves{ix}(4) > 0 && ...
            currentBoard(availableMoves{ix}(3), availableMoves{ix}(4)) >= 0
                possibleMoves{numberOfMoves} = availableMoves{ix};
                possibleMoves{numberOfMoves}(5) = abs(currentBoard(availableMoves{ix}(3), availableMoves{ix}(4)));
                numberOfMoves = numberOfMoves + 1;
            end
        end
    end
        