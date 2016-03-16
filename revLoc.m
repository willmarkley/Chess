function position = revLoc(row, column)
% revLoc(row, column)
% This function takes in two numbers, a row and a column, and returns a
% string of the position on the board in chess notation. (Example: 'a4').
position = num2str(8-row+1);

switch column
        case 1
            position = ['a', position];
        case 2
            position = ['b', position];
        case 3
            position = ['c', position];
        case 4
            position = ['d', position];
        case 5
            position = ['e', position];
        case 6
            position = ['f', position];
        case 7
            position = ['g', position];
        case 8
            position = ['h', position];
end