function [kSide, qSide] = getBCastling(currentBoard)
% [kSide, qSide] = getBCastling(currentBoard)
% This function takes in a currentBoard object and then outputs two boolean
% values as to whether king side (kSide) and queen side (qSide) castling is
% possible.

%% Initialize outputs
kSide=false;
qSide=false;

%% Determine whether king side castling is possible

if currentBoard(1,5)==6 && currentBoard(1,6)==0 && currentBoard(1,7)==0 ...
        && currentBoard(1,1)== 4 %check to make sure castling is possible
    for ix = 5:7 %can't castle through or out of check
        newBoard = makeMove(currentBoard, [1,5], [1,ix]);
        check = checkCheck(currentBoard(1,ix), newBoard);
        if check
            break
        elseif ix==7
            kSide=true;
        end
    end
end

%% Determine whether queen side castline is possible
if currentBoard(1,5)==6 && currentBoard(1,1)==4 && currentBoard(1,2)==0 ...
        && currentBoard(1,3)== 0 && currentBoard(1,4)== 0 %check to make sure castling is possible
    for ix = 5:-1:3 %can't castle through or out of check
        newBoard = makeMove(currentBoard, [1,5], [1,ix]);
        check = checkCheck(currentBoard(1,ix), newBoard);
        if check
            break
        elseif ix==3
            qSide=true;
        end
    end
end