function possibleMoves = allWPossibleMoves(board)
% allWPossibleMoves(board)
% Uses the board input to build a cell array of possible moves. Each item
% in the cell array is a 5-item vector [startrow, startcol, endrow,
% endcol, points]

possibleMoves = {}; % initialize the possibleMoves cellarray
%% Get position of king to use when checking for check/checkmate
kingpos = findKing(board, 'white');

%% Get all possible move for each white piece on the board
for irow=1:8
    for icol=1:8
        currentpos=revLoc(irow, icol);
        switch board(irow, icol) % checks the piece type at the location
            case 1
                pawnMoves = [getPawnMoves(currentpos, board), getPawnKill(currentpos, board)];
                for imove = 1:length(pawnMoves)
                    potentialBoard = makeMove(board, pawnMoves{imove}(1:2), pawnMoves{imove}(3:4));
                    check = checkCheck(kingpos, potentialBoard);
                    if ~check
                        possibleMoves=[possibleMoves, pawnMoves{imove}];
                    end
                end
            case 2
                bishopMoves = getBishopMoves(currentpos, board);
                for imove = 1:length(bishopMoves)
                    potentialBoard = makeMove(board, bishopMoves{imove}(1:2), bishopMoves{imove}(3:4));
                    check = checkCheck(kingpos, potentialBoard);
                    if ~check
                        possibleMoves=[possibleMoves, bishopMoves{imove}];
                    end
                end
            case 3
                knightMoves = getKnightMoves(currentpos, board);
                for imove = 1:length(knightMoves)
                    potentialBoard = makeMove(board, knightMoves{imove}(1:2), knightMoves{imove}(3:4));
                    check = checkCheck(kingpos, potentialBoard);
                    if ~check
                        possibleMoves=[possibleMoves, knightMoves{imove}];
                    end
                end                    
            case 4
                rookMoves = getRookMoves(currentpos, board);
                for imove = 1:length(rookMoves)
                    potentialBoard = makeMove(board, rookMoves{imove}(1:2), rookMoves{imove}(3:4));
                    check = checkCheck(kingpos, potentialBoard);
                    if ~check
                        possibleMoves=[possibleMoves, rookMoves{imove}];
                    end
                end
            case 5
                queenMoves = getQueenMoves(currentpos, board);
                for imove = 1:length(queenMoves)
                    potentialBoard = makeMove(board, queenMoves{imove}(1:2), queenMoves{imove}(3:4));
                    check = checkCheck(kingpos, potentialBoard);
                    if ~check
                        possibleMoves=[possibleMoves, queenMoves{imove}];
                    end
                end
            case 6
                kingMoves = getKingMoves(currentpos, board);
                for imove = 1:length(kingMoves)
                    potentialBoard = makeMove(board, kingMoves{imove}(1:2), kingMoves{imove}(3:4));
                    check = checkCheck(kingMoves{imove}(3:4), potentialBoard);
                    if ~check
                        possibleMoves=[possibleMoves, kingMoves{imove}];
                    end
                end
        end
    end
end

