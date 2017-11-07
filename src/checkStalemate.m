function stalemate = checkStalemate(board, turnColor, possibleMoves)

stalemate = false;

%% stalemate is true if the player has no possible moves and is NOT in check
switch turnColor
    case 'white'
        whiteKing = findKing(board, 'white');
        if ~checkCheck(whiteKing, board) && isempty(possibleMoves)
            stalemate = true;
        end
    case 'black'
        blackKing = findKing(board, 'black');
        if ~checkCheck(blackKing, board) && isempty(possibleMoves)
            stalemate = true;
        end
end

%% stalemate is true if the only pieces on the board are kings

pieces = [];
for irow = 1:8
    for icol = 1:8 
        if board(irow, icol) ~= 0
            pieces = [pieces, board(irow,icol)];
        end
    end
end
if isequal(pieces, [-6,6]) || isequal(pieces, [6,-6])
    stalemate = true;
end