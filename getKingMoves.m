function possibleMoves = getKingMoves(position, currentBoard)
% getKingMoves(position, currentBoard) accepts as parameters a position
% object and a board object, returning an array of position objects that
% are all of the possible moves for a king at the specified location in the
% current board.

%% Initialize possibleMoves cellarray
numberOfMoves = 1;
possibleMoves = {};

%% Convert the postion from string to matrix index
position  = loc(position);

%% Create cell array of all available moves
availableMoves = {[position, position(1)-1, position(2)-1],[position, position(1)-1, position(2)],...
    [position, position(1)-1, position(2)+1],[position, position(1), position(2)-1],...
    [position, position(1), position(2)+1],  [position, position(1)+1, position(2)-1],...
    [position, position(1)+1, position(2)],  [position, position(1)+1, position(2)+1]};

%% Check which available moves are legal for the white king
if currentBoard(position(1), position(2)) > 0 % checks if its the white king
    for ix = 1:8
        if availableMoves{ix}(3) <= 8 && availableMoves{ix}(3) > 0 && availableMoves{ix}(4) <= 8 ...
                && availableMoves{ix}(4) > 0
            if currentBoard(availableMoves{ix}(3),availableMoves{ix}(4)) <= 0
               availableMoves{ix}(5) = abs(currentBoard(availableMoves{ix}(3),availableMoves{ix}(4)));

               possibleMoves{numberOfMoves} = availableMoves{ix};
               numberOfMoves = numberOfMoves + 1;
            end
        end
    end
end

%% Check which available moves are legal for the black king
if currentBoard(position(1), position(2)) < 0 % checks if its the black king
    for ix = 1:8
        if availableMoves{ix}(3) <= 8 && availableMoves{ix}(3) > 0 && availableMoves{ix}(4) <= 8 ...
                && availableMoves{ix}(4) > 0
            if currentBoard(availableMoves{ix}(3),availableMoves{ix}(4)) >= 0
                availableMoves{ix}(5)=currentBoard(availableMoves{ix}(3),availableMoves{ix}(4));
                
                possibleMoves{numberOfMoves} = availableMoves{ix};
                numberOfMoves = numberOfMoves + 1;
            end
        end
    end
end