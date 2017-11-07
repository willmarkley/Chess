function pieceImage(int,irow,icol,handles)

hax = handles.boardAxis;

%% 
switch int
    case -1
        % piece = 'blackPawn';
        
        bPawnim = imread('blackPawn.png');
        [bPawnim, map, Ralpha] = imread('blackPawn.png');
        bPawnimage1 = image('CData', bPawnim);
        bPawnimage1.Parent=hax;
        bPawnimage1.XData = [icol, icol-1];
        bPawnimage1.YData = [irow-1, irow];
        bPawnimage1.AlphaData = Ralpha;
        
    case -2
        % piece = 'blackBishop';
        
        bBishopim = imread('blackBishop.png');
        [bBishopim, map, Ralpha] = imread('blackBishop.png');
        bBishopimage = image('CData', bBishopim);
        bBishopimage.Parent=hax;
        bBishopimage.XData = [icol, icol-1];
        bBishopimage.YData = [irow-1, irow];
        bBishopimage.AlphaData = Ralpha;
    case -3
        % piece = 'blackKnight';
        
        bKnightim = imread('blackKnight.png');
        [bKnightim, map, Ralpha] = imread('blackKnight.png');
        bKnightimage1 = image('CData', bKnightim);
        bKnightimage1.Parent=hax;
        bKnightimage1.XData = [icol, icol-1];
        bKnightimage1.YData = [irow-1, irow];
        bKnightimage1.AlphaData = Ralpha;
        
    case -4
        % piece = 'blackRook';
        
        bRookim = imread('blackRook.png');
        [bRookim, map, Ralpha] = imread('blackRook.png');
        bRookimage1 = image('CData', bRookim);
        bRookimage1.Parent=hax;
        bRookimage1.XData = [icol, icol-1];
        bRookimage1.YData = [irow-1, irow];
        bRookimage1.AlphaData = Ralpha;
        
    case -5
        % piece = 'blackQueen';
        
        bQueenim = imread('blackQueen.png');
        [bQueenim, map, Ralpha] = imread('blackQueen.png');
        bQueenimage = image('CData', bQueenim);
        bQueenimage.Parent=hax;
        bQueenimage.XData = [icol, icol-1];
        bQueenimage.YData = [irow-1, irow];
        bQueenimage.AlphaData = Ralpha;
        
    case -6
        % piece = 'blackKing';
        
        bKingim = imread('blackKing.png');
        [bKingim, map, Ralpha] = imread('blackKing.png');
        bKingimage = image('CData', bKingim);
        bKingimage.Parent=hax;
        bKingimage.XData = [icol, icol-1];
        bKingimage.YData = [irow-1, irow];
        bKingimage.AlphaData = Ralpha;
        
    case 1
        % piece = 'whitePawn';
        
        wPawnim = imread('whitePawn.png');
        [wPawnim, map, Ralpha] = imread('whitePawn.png');
        wPawnimage1 = image('CData', wPawnim);
        wPawnimage1.Parent=hax;
        wPawnimage1.XData = [icol, icol-1];
        wPawnimage1.YData = [irow-1, irow];
        wPawnimage1.AlphaData = Ralpha;
        
    case 2
        % piece = 'whiteBishop';
        
        wBishopim = imread('whiteBishop.png');
        [wBishopim, map, Ralpha] = imread('whiteBishop.png');
        wBishopimage = image('CData', wBishopim);
        wBishopimage.Parent=hax;
        wBishopimage.XData = [icol, icol-1];
        wBishopimage.YData = [irow-1, irow];
        wBishopimage.AlphaData = Ralpha;
        
    case 3
        % piece = 'whiteKnight';
        
        wKnightim = imread('whiteKnight.png');
        [wKnightim, map, Ralpha] = imread('whiteKnight.png');
        wKnightimage1 = image('CData', wKnightim);
        wKnightimage1.Parent=hax;
        wKnightimage1.XData = [icol, icol-1];
        wKnightimage1.YData = [irow-1, irow];
        wKnightimage1.AlphaData = Ralpha;
        
    case 4
        % piece = 'whiteRook';
        
        wRookim = imread('whiteRook.png');
        [wRookim, map, Ralpha] = imread('whiteRook.png');
        wRookimage1 = image('CData', wRookim);
        wRookimage1.Parent=hax;
        wRookimage1.XData = [icol, icol-1];
        wRookimage1.YData = [irow-1, irow];
        wRookimage1.AlphaData = Ralpha;
        
    case 5
        % piece = 'whiteQueen';
        
        wQueenim = imread('whiteQueen.png');
        [wQueenim, map, Ralpha] = imread('whiteQueen.png');
        wQueenimage = image('CData', wQueenim);
        wQueenimage.Parent=hax;
        wQueenimage.XData = [icol, icol-1];
        wQueenimage.YData = [irow-1, irow];
        wQueenimage.AlphaData = Ralpha;
        
    case 6
        % piece = 'whiteKing';
        
        wKingim = imread('whiteKing.png');
        [wKingim, map, Ralpha] = imread('whiteKing.png');
        wKingimage = image('CData', wKingim);
        wKingimage.Parent=hax;
        wKingimage.XData = [icol, icol-1];
        wKingimage.YData = [irow-1, irow];
        wKingimage.AlphaData = Ralpha;
end