function possibleMoves = getRookMoves(position, currentBoard)
% getPawnMoves(position, currentBoard)
% Accepts as parameters a position
% object and a board object, returning an array of position objects that
% are all of the possible moves for a pawn at the specified location in the
% current board.

numberofMoves = 1; %a variable to keep track of the index in the possibleMoves array
possibleMoves = {}; %initialize the possibleMoves cellarray

position = loc(position);   % 2 element Vector (1) =row, (2)=column



% White rook possible moves
if currentBoard(position(1),position(2)) > 0
    % Check Column above for moves
    for irow=(position(1)-1):-1:1
        if currentBoard(irow,position(2)) == 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = irow;
            possibleMoves{numberofMoves}(4) = position(2);
            possibleMoves{numberofMoves}(5) = 0;
            numberofMoves = numberofMoves + 1;
        elseif currentBoard(irow,position(2)) <0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = irow;
            possibleMoves{numberofMoves}(4) = position(2);
            possibleMoves{numberofMoves}(5) = abs(currentBoard(irow,position(2)));
            numberofMoves = numberofMoves + 1;
            break
        else
            break
        end
    end
    
    % Check Column below for moves
    for irow=(position(1)+1):8
        if currentBoard(irow,position(2)) == 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = irow;
            possibleMoves{numberofMoves}(4) = position(2);
            possibleMoves{numberofMoves}(5) = 0;
            numberofMoves = numberofMoves + 1;
        elseif currentBoard(irow,position(2)) <0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = irow;
            possibleMoves{numberofMoves}(4) = position(2);
            possibleMoves{numberofMoves}(5) = abs(currentBoard(irow,position(2)));
            numberofMoves = numberofMoves + 1;
            break
        else
            break
        end
    end
    
    % Check Row to right for moves
    for icolumn=(position(2)+1):8
        if currentBoard(position(1),icolumn) == 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = position(1);
            possibleMoves{numberofMoves}(4) = icolumn;
            possibleMoves{numberofMoves}(5) = 0;
            numberofMoves = numberofMoves + 1;
        elseif currentBoard(position(1),icolumn) <0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = position(1);
            possibleMoves{numberofMoves}(4) = icolumn;
            possibleMoves{numberofMoves}(5) = abs(currentBoard(position(1),icolumn));
            numberofMoves = numberofMoves + 1;
            break
        else
            break
        end
    end
    
    % Check Row to left for moves
    for icolumn=(position(2)-1):-1:1
        if currentBoard(position(1),icolumn) == 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = position(1);
            possibleMoves{numberofMoves}(4) = icolumn;
            possibleMoves{numberofMoves}(5) = 0;
            numberofMoves = numberofMoves + 1;
        elseif currentBoard(position(1),icolumn) <0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = position(1);
            possibleMoves{numberofMoves}(4) = icolumn;
            possibleMoves{numberofMoves}(5) = abs(currentBoard(position(1),icolumn));
            numberofMoves = numberofMoves + 1;
            break
        else
            break
        end
    end
end

% Black rook possible moves
if currentBoard(position(1),position(2)) < 0
    % Check Column above for moves
    for irow=(position(1)-1):-1:1
        if currentBoard(irow,position(2)) == 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = irow;
            possibleMoves{numberofMoves}(4) = position(2);
            possibleMoves{numberofMoves}(5) = 0;
            numberofMoves = numberofMoves + 1;
        elseif currentBoard(irow,position(2)) > 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = irow;
            possibleMoves{numberofMoves}(4) = position(2);
            possibleMoves{numberofMoves}(5) = abs(currentBoard(irow,position(2)));
            numberofMoves = numberofMoves + 1;
            break
        else
            break
        end
    end
    
    % Check Column below for moves
    for irow=(position(1)+1):8
        if currentBoard(irow,position(2)) == 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = irow;
            possibleMoves{numberofMoves}(4) = position(2);
            possibleMoves{numberofMoves}(5) = 0;
            numberofMoves = numberofMoves + 1;
        elseif currentBoard(irow,position(2)) > 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = irow;
            possibleMoves{numberofMoves}(4) = position(2);
            possibleMoves{numberofMoves}(5) = abs(currentBoard(irow,position(2)));
            numberofMoves = numberofMoves + 1;
            break
        else
            break
        end
    end
    
    % Check Row to right for moves
    for icolumn=(position(2)+1):8
        if currentBoard(position(1),icolumn) == 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = position(1);
            possibleMoves{numberofMoves}(4) = icolumn;
            possibleMoves{numberofMoves}(5) = 0;
            numberofMoves = numberofMoves + 1;
        elseif currentBoard(position(1),icolumn) > 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = position(1);
            possibleMoves{numberofMoves}(4) = icolumn;
            possibleMoves{numberofMoves}(5) = abs(currentBoard(position(1),icolumn));
            numberofMoves = numberofMoves + 1;
            break
        else
            break
        end
    end
    
    % Check Row to left for moves
    for icolumn=(position(2)-1):-1:1
        if currentBoard(position(1),icolumn) == 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = position(1);
            possibleMoves{numberofMoves}(4) = icolumn;
            possibleMoves{numberofMoves}(5) = 0;
            numberofMoves = numberofMoves + 1;
        elseif currentBoard(position(1),icolumn) > 0
            possibleMoves{numberofMoves}(1) = position(1);
            possibleMoves{numberofMoves}(2) = position(2);
            possibleMoves{numberofMoves}(3) = position(1);
            possibleMoves{numberofMoves}(4) = icolumn;
            possibleMoves{numberofMoves}(5) = abs(currentBoard(position(1),icolumn));
            numberofMoves = numberofMoves + 1;
            break
        else
            break
        end
    end
end