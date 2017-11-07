function location = loc(str)
% Takes in a string like 'a1' and converts it to a coordinate for the board
% matrix. Where the top left is 'a8' and corresponds to (1,1) and the bottom
% right is 'h1' and corresponds to (8,8).
    
    location(1) = 8-str2num(str(2))+1;
    switch str(1)
        case 'a'
            location(2) = 1;
        case 'b'
            location(2) = 2;
        case 'c'
            location(2) = 3;
        case 'd'
            location(2) = 4;
        case 'e'
            location(2) = 5;
        case 'f'
            location(2) = 6;
        case 'g'
            location(2) = 7;
        case 'h'
            location(2) = 8;    
    end
    
    
    