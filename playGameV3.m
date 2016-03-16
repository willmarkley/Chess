function winner = playGameV3(handles)

% playGameV3()  function that plays the chess game
    % returns the winner as a string "White" or "Black"

%% Set Up Board and Parameters

board = [-4,-3,-2,-5,-6,-2,-3,-4;...
            -1,-1,-1,-1,-1,-1,-1,-1;...
            0,0,0,0,0,0,0,0;...
            0,0,0,0,0,0,0,0;...
            0,0,0,0,0,0,0,0;...
            0,0,0,0,0,0,0,0;...
            1,1,1,1,1,1,1,1;...
            4,3,2,5,6,2,3,4]; 
        
boardim.Parent = handles.boardAxis;
drawBoardF3(board,handles);

whiteAlg = handles.whiteAlgPopUp.Value;
blackAlg = handles.blackAlgPopUp.Value;
checkmate = false;
stalemate = false;
staleCount = 0;

handles.winText.String = [' ']; 
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
        kstring = ['Stalemate, Game Over.'];
        handles.winText.String = kstring;
        break
    end    
    %% Choose white move
    switch whiteAlg
        case 1
            %random/easy
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
    %% Re-draw the board 
    drawBoardF3(board,handles);
    pause(0.1);
    
    %% Edit Stalemate counter
    if wMove(5) == 0
        staleCount = staleCount+1;
    else
        staleCount = 0;
    end
    
    %% Checkmate?
    checkmate = checkCheckmate(board);
    if checkmate
        winner = 'white';
        wwinString = ['Game Over. White wins.'];
        handles.winTest.String = wwinString;
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
        sString = ['Stalemate, Game Over.'];
        handles.winText.String = sString;
        disp(board);
        break
    end    
    %% Choose black move
    switch blackAlg
        case 1
            %random/easy
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
    
    %% Re-draw the board 
    drawBoardF3(board,handles);
    pause(0.1);
    
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
        bwinString = ['Game Over. Black Wins.'];
        handles.winText.String = bwinString;
        break
        %display end game, black wins
    end    
end
