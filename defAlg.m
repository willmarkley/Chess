function move = defAlg(board, possibleMoves, opponentColor)

% does the same thing as offensive but also avoids moving its pieces to a
% location where it can be captured


option1 = {}; %checkmate
option2 = {}; %check
option3 = {}; %capture queen
option4 = {}; %capture rook
option5 = {}; %capture knight
option6 = {}; %capture bishop
option7 = {}; %capture pawn
option8 = {}; %everything else
defensiveMoves = {}; %moves that are defensive
opponentKing = findKing(board, opponentColor);

%% get opponent moves
switch opponentColor
    case 'black'
        oppMoves = allBPossibleMoves(board);
    case 'white'
        oppMoves = allWPossibleMoves(board);
end


%% Check if any moves are defensive
for ix = 1:length(possibleMoves)
    if checkCheckmate(makeMove(board, possibleMoves{ix}(1:2), possibleMoves{ix}(3:4)))
        defensiveMoves = [defensiveMoves, possibleMoves{ix}];
        break %breaks if checkmate is possible
    end
    
    %Find the moves of the opponent king once a piece has moved, this is useful in
    %stopping pieces from suiciding into next to the king
    newBoard = makeMove(board,possibleMoves{ix}(1:2), possibleMoves{ix}(3:4));
    tempkingpos = findKing(board, opponentColor); %must use revLoc to use in getKingMoves
    kingpos = revLoc(tempkingpos(1), tempkingpos(2));
    kingMoves = getKingMoves(kingpos,newBoard);
    newMoves = [oppMoves, kingMoves];
    
    defensive=true; % this value keeps track of whether or not a move is defensive
    for ik = 1:length(newMoves)
        if  newMoves{ik}(5)>0
            defensive=false;
        end
    end
    
    if defensive
        defensiveMoves = [defensiveMoves, possibleMoves{ix}];
    end
end

%% sort Moves
if ~isempty(defensiveMoves) %if defensive moves are possible, sorts those
    for ix = 1:length(defensiveMoves)
        if checkCheckmate(makeMove(board, defensiveMoves{ix}(1:2), defensiveMoves{ix}(3:4)))
            option1 = [option1, defensiveMoves{ix}];
            break %breaks if checkmate is possible
        elseif checkCheck(opponentKing, makeMove(board, defensiveMoves{ix}(1:2), defensiveMoves{ix}(3:4)))
            option2 = [option2, defensiveMoves{ix}];
        elseif defensiveMoves{ix}(5) == 5
            option3 = [option3, defensiveMoves{ix}];
        elseif defensiveMoves{ix}(5) == 4
            option4 = [option4, defensiveMoves{ix}];
        elseif defensiveMoves{ix}(5) == 3
            option5 = [option5, defensiveMoves{ix}];
        elseif defensiveMoves{ix}(5) == 2
            option6 = [option6, defensiveMoves{ix}];
        elseif defensiveMoves{ix}(5) == 1
            option7 = [option7, defensiveMoves{ix}];
        else
            option8 = [option8, defensiveMoves{ix}];
        end
    end
else %otherwise, sorts all the moves
    for ix = 1:length(possibleMoves)
        if checkCheckmate(makeMove(board, possibleMoves{ix}(1:2), possibleMoves{ix}(3:4)))
            option1 = [option1, possibleMoves{ix}];
            break %breaks if checkmate is possible
        elseif checkCheck(opponentKing, makeMove(board, possibleMoves{ix}(1:2), possibleMoves{ix}(3:4)))
            option2 = [option2, possibleMoves{ix}];
        elseif possibleMoves{ix}(5) == 5
            option3 = [option3, possibleMoves{ix}];
        elseif possibleMoves{ix}(5) == 4
            option4 = [option4, possibleMoves{ix}];
        elseif possibleMoves{ix}(5) == 3
            option5 = [option5, possibleMoves{ix}];
        elseif possibleMoves{ix}(5) == 2
            option6 = [option6, possibleMoves{ix}];
        elseif possibleMoves{ix}(5) == 1
            option7 = [option7, possibleMoves{ix}];
        else
            option8 = [option8, possibleMoves{ix}];
        end
    end
end


%% Set move
if ~isempty(option1)
    move = option1{randi(length(option1))};
elseif ~isempty(option3)
    move = option3{randi(length(option3))};
elseif ~isempty(option4)
    move = option4{randi(length(option4))};
elseif ~isempty(option5)
    move = option5{randi(length(option5))};
elseif ~isempty(option6)
    move = option6{randi(length(option6))};
elseif ~isempty(option2) %puts a preference on capturing pieces other than pawns over check
    move = option2{randi(length(option2))};
elseif ~isempty(option7)
    move = option7{randi(length(option7))};
elseif ~isempty(option8)
    move = option8{randi(length(option8))};
end

