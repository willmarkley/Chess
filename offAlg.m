function move = offAlg(board, possibleMoves, opponentColor)


option1 = {}; %checkmate
option2 = {}; %check
option3 = {}; %capture queen
option4 = {}; %capture rook
option5 = {}; %capture knight
option6 = {}; %capture bishop
option7 = {}; %capture pawn
option8 = {}; %everything else

opponentKing = findKing(board, opponentColor);

%% sort Moves
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

%% Set move 
if ~isempty(option1)
    move = option1{randi(length(option1))};
elseif ~isempty(option2)
    move = option2{randi(length(option2))};
elseif ~isempty(option3)
    move = option3{randi(length(option3))};
elseif ~isempty(option4)
    move = option4{randi(length(option4))};
elseif ~isempty(option5)
    move = option5{randi(length(option5))};
elseif ~isempty(option6)
    move = option6{randi(length(option6))};
elseif ~isempty(option7)
    move = option7{randi(length(option7))};
elseif ~isempty(option8)
    move = option8{randi(length(option8))};
end
        