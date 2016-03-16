function winner = playGameV2(whiteAlg, blackAlg)

% playGameV2()  function that plays the chess game for simulations without
% displaying it

%% Set Up Board and Parameters

board = [-4,-3,-2,-5,-6,-2,-3,-4;...
    -1,-1,-1,-1,-1,-1,-1,-1;...
    0,0,0,0,0,0,0,0;...
    0,0,0,0,0,0,0,0;...
    0,0,0,0,0,0,0,0;...
    0,0,0,0,0,0,0,0;...
    1,1,1,1,1,1,1,1;...
    4,3,2,5,6,2,3,4];


checkmate = false;
stalemate = false;
staleCount = 0;

while ~checkmate
    %% Get possible White Moves
    wPossibleMoves = allWPossibleMoves(board);
    %% Stalemate?
    stalemate = checkStalemate(board, 'white', wPossibleMoves);
    if isempty(wPossibleMoves) || staleCount >= 50
        stalemate = true;   
    end
    if stalemate
        winner = 'none';
        disp('Stalemate, Game Over.');
        break
    end
    

    %% Choose White move
    switch whiteAlg
        case 1
            wMove = wPossibleMoves{randi(length(wPossibleMoves))};
        case 2
            %offensive
            wMove = offAlg(board, wPossibleMoves, 'black');
        case 3
            %defensive
            wMove = defAlg(board, wPossibleMoves, 'black');
    end
    wStart = wMove(1:2);  %Set the starting position to the first two items in wMove
    wEnd = wMove(3:4);    %Set the ending postion to the second two items in wMove
    
    %% Make White Move
    board = makeMove(board, wStart, wEnd); %function call that makes the move and displays the board
    
    %% Edit stalemate counter
    if wMove(5) == 0
        staleCount = staleCount+1;
    else
        staleCount = 0;
    end
    
    %% Checkmate?
    checkmate = checkCheckmate(board);
    if checkmate
        winner = 'white';
        disp('Game Over. White wins.');
        % disp(board); for debugging purposes
        break
    end
    
    %% Get possible Black Moves
    bPossibleMoves = allBPossibleMoves(board);
    
    %% Stalemate?
    stalemate = checkStalemate(board, 'black', bPossibleMoves);
    if isempty(bPossibleMoves) || staleCount >= 50
        stalemate = true;
    end
    if stalemate
        winner = 'none';
        disp('Stalemate, Game Over.');
        %disp(board);
        break
    end    
    %% Choose black move
    switch blackAlg
        case 1
            bMove = bPossibleMoves{randi(length(bPossibleMoves))};
        case 2
            %offensive
            bMove = offAlg(board, bPossibleMoves, 'white');
        case 3
            %defensive
            bMove = defAlg(board, bPossibleMoves, 'white');
    end
    bStart = bMove(1:2);  %Set the starting position to the first two items in bMove
    bEnd = bMove(3:4);    %Set the ending postion to the second two items in bMove
    
    %% Make Black Move
    board = makeMove(board, bStart, bEnd);
    
    %% Edit stalemate counter
    if bMove(5) == 0
        staleCount = staleCount+1;
    else
        staleCount = 0;
    end
    
    %% Checkmate?
    checkmate = checkCheckmate(board);
    if checkmate
        winner = 'black';
        disp('Game Over. Black Wins.');
        % disp(board); for debugging purposes
        break
        %display end game, black wins
    end
end
