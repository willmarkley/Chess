function kingpos = findKing(board, color)
    
    switch color
        case 'white'
            for irow=1:8
                for icol=1:8
                    if board(irow, icol) == 6
                        kingpos = [irow, icol];
                    end
                end
            end
        case 'black'
            for irow=1:8
                for icol=1:8
                    if board(irow, icol) == -6
                        kingpos = [irow, icol];
                    end
                end
            end
    end