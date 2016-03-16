function newBoard = makeMove(currentBoard, startPos, endPos)
% makeMove(currentBoard, startPos, endPos)
    % currentBoard is an 8x8 matrix representing the state of the game.
    % startPos and endPos are 2-item vectors where the first item is the
    % row and the second is the column in the board matrix.
    % Moves the piece at startPos to endPos and returns a matrix
    % of the new board position.  
    % This function also returns the new state of the board matrix. 
     
    %% store a variable for the piece being moved
    movingPiece = currentBoard(startPos(1),startPos(2));
    
    %% create a new board matrix that will be modified
    newBoard = currentBoard;
    
    % disp(startPos); for debugging purposes
    % disp(endPos); for debbugging purposes
    
    %if currentBoard(endPos(1), endPos(2)) ~= 6 && currentBoard(endPos(1), endPos(2)) ~= -6 
        %% set value of the starting position to 0
        newBoard(startPos(1),startPos(2)) = 0;

        %% set value of the ending position to the piece that is being moved
        newBoard(endPos(1),endPos(2)) = movingPiece;


        %% Check for pawn promotion
        if movingPiece == 1 && endPos(1) == 1
            newBoard(endPos(1),endPos(2)) = 5;
        end        

        if movingPiece == -1 && endPos(1) == 8
            newBoard(endPos(1),endPos(2)) = -5;
        end
        
        % disp(newBoard); for debugging purposes
   % else
    %    disp('Sorry you cant eat the King'); %This was to test if the king was being captured, and is no longer necessary
     %   % disp(newBoard);
      %  clear 
        
   % end
    
    
    
    
    
        
    
            
            
