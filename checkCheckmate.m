function checkmate = checkCheckmate(board)
% checkCheckmate(board) takes a board matrix and then determines whether or
% not either of the kings are in check.

checkmate=false;

whiteKing = findKing(board, 'white');
blackKing = findKing(board, 'black');

if checkCheck(whiteKing, board) && isempty(allWPossibleMoves(board))
    checkmate = true;
elseif checkCheck(blackKing, board) && isempty(allBPossibleMoves(board))
    checkmate = true;
end

