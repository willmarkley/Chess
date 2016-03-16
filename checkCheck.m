function [check,attackPiece] = checkCheck(kingpos, board)
% checkCheck(kingpos, board) takes the position of a king (as a
% 2-element vector) and a board object and then evaluates whether or not 
% the king would be in check at that position.

check=false;
if board(kingpos(1), kingpos(2)) > 0 % checks if its the white king
    for irow=1:8
        for icolumn=1:8
            if board(irow, icolumn) == -1 % checks if it is a Pawn
                currentpos=revLoc(irow, icolumn);
                possibleMoves=getPawnKill(currentpos, board);
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}(3:4)==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            elseif board(irow, icolumn) == -2 % checks if it is a Bishop
                currentpos=revLoc(irow, icolumn);
                possibleMoves=getBishopMoves(currentpos, board);
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}(3:4)==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            elseif board(irow, icolumn) == -3 % checks if it is a Knight
                currentpos=revLoc(irow, icolumn);
                possibleMoves=getKnightMoves(currentpos, board);
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}(3:4)==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            elseif board(irow, icolumn) == -4 % checks if it is a Rook
                currentpos=revLoc(irow, icolumn);
                possibleMoves=getRookMoves(currentpos, board);
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}(3:4)==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            elseif board(irow, icolumn) == -5 % checks if it is a Queen
                currentpos=revLoc(irow, icolumn);
                possibleMoves=getQueenMoves(currentpos, board);
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}(3:4)==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            elseif board(irow, icolumn) == -6 % checks if it is a King
                position=[irow, icolumn];
                possibleMoves= {[position(1)-1, position(2)-1]...
                    [position(1)-1, position(2)], [position(1)-1, position(2)+1],...
                    [position(1), position(2)-1], [position(1), position(2)+1],...
                    [position(1)+1, position(2)-1], [position(1)+1, position(2)],...
                    [position(1)+1, position(2)+1]}; % all the adjacent squares
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            end
        end
    end
elseif board(kingpos(1), kingpos(2)) < 0 % checks if its the b king
    for irow=1:8
        for icolumn=1:8
            if board(irow, icolumn) == 1 % checks if it is a Pawn
                currentpos=revLoc(irow, icolumn);
                possibleMoves=getPawnKill(currentpos, board);
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}(3:4)==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            elseif board(irow, icolumn) == 2 % checks if it is a Bishop
                currentpos=revLoc(irow, icolumn);
                possibleMoves=getBishopMoves(currentpos, board);
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}(3:4)==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            elseif board(irow, icolumn) == 3 % checks if it is a Knight
                currentpos=revLoc(irow, icolumn);
                possibleMoves=getKnightMoves(currentpos, board);
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}(3:4)==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            elseif board(irow, icolumn) == 4 % checks if it is a Rook
                currentpos=revLoc(irow, icolumn);
                possibleMoves=getRookMoves(currentpos, board);
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}(3:4)==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            elseif board(irow, icolumn) == 5 % checks if it is a Queen
                currentpos=revLoc(irow, icolumn);
                possibleMoves=getQueenMoves(currentpos, board);
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}(3:4)==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            elseif board(irow, icolumn) == 6 % checks if it is a King
                position=[irow, icolumn];
                possibleMoves= {[position(1)-1, position(2)-1]...
                    [position(1)-1, position(2)], [position(1)-1, position(2)+1],...
                    [position(1), position(2)-1], [position(1), position(2)+1],...
                    [position(1)+1, position(2)-1], [position(1)+1, position(2)],...
                    [position(1)+1, position(2)+1]}; % all the adjacent squares
                for ix=1:length(possibleMoves)
                    if possibleMoves{ix}==kingpos
                        check=true;
                        attackPiece=[irow, icolumn];
                    end
                end
            end
        end
    end
end