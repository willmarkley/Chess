function drawBoardF3(board,handles)

% Takes in the matrix of the board and draws a new image of the board with
% new piece locations/values.

%% Create 8x8 Axis for the board
boardim = imread('board.png');
x= [0:8];
y = [0:8];
imagesc(x,y,boardim, 'Parent', handles.boardAxis);
axis image


%% New piece images

for irow = 1:8
    for icol = 1:8
        
        pieceImage3(board(irow,icol), irow, icol,handles);
        
    end
end


