function possibleMoves = getBishopMoves(position, currentBoard)

    numberofMoves = 1; %a variable to keep track of the index in the possibleMoves array
    possibleMoves = {}; %initialize the possibleMoves cellarray
    
    position = loc(position); 
    
    if currentBoard(position(1), position(2)) > 0 % white
        
        for ik = 1:7
            if (position(1) + ik) > 0 && (position(2) + ik) > 0 && (position(1) + ik) <= 8 && (position(2) + ik) <= 8 && currentBoard(position(1)+ik, position(2)+ik) <= 0
                possibleMoves{numberofMoves} = [position, position + ik];
                possibleMoves{numberofMoves}(5) = currentBoard(position(1)+ik, position(2)+ik);
                numberofMoves = numberofMoves + 1;
                if currentBoard(position(1)+ik, position(2)+ik) ~= 0
                    break;
                end
            else
                break
            end
        end
        
        for ik = 1:7
            if position(1) - ik > 0 && position(2) - ik > 0 && position(1) - ik <= 8 && position(2) - ik <= 8 && currentBoard(position(1)-ik, position(2)-ik) <= 0
                possibleMoves{numberofMoves} = [position, position - ik];
                possibleMoves{numberofMoves}(5) = currentBoard(position(1)-ik, position(2)-ik);
                numberofMoves = numberofMoves + 1;
                if currentBoard(position(1)-ik, position(2)-ik) ~= 0
                    break;
                end
            else
                break
            end
        end
        
        for ik = 1:7
            if (position(1) + ik) > 0 && (position(2) - ik) > 0 && (position(1) + ik) <= 8 && (position(2) - ik) <= 8 && currentBoard(position(1)+ik, position(2)-ik) <= 0
                possibleMoves{numberofMoves} = [position, position(1) + ik, position(2) - ik];
                possibleMoves{numberofMoves}(5) = currentBoard(position(1)+ik, position(2)-ik);
                numberofMoves = numberofMoves + 1;
                if currentBoard(position(1)+ik, position(2)-ik) ~= 0
                    break;
                end
            else
                break
            end
        end
        for ik = 1:7
            if (position(1) - ik) > 0 && (position(2) + ik) > 0 && (position(1) - ik) <= 8 && (position(2) + ik) <= 8 && currentBoard(position(1)-ik, position(2)+ik) <= 0
                possibleMoves{numberofMoves} = [position, position(1) - ik, position(2) + ik];
                possibleMoves{numberofMoves}(5) = currentBoard(position(1)-ik, position(2)+ik);
                numberofMoves = numberofMoves + 1;
                if currentBoard(position(1)-ik, position(2)+ik) ~= 0
                    break;
                end
            else
                break
            end
        end
        
    else % black
         for ik = 1:7
            if (position(1) + ik) > 0 && (position(2) + ik) > 0 && (position(1) + ik) <= 8 && (position(2) + ik) <= 8 && currentBoard(position(1)+ik, position(2)+ik) >= 0
                possibleMoves{numberofMoves} = [position, position + ik];
                possibleMoves{numberofMoves}(5) = currentBoard(position(1)+ik, position(2)+ik);
                numberofMoves = numberofMoves + 1;
                if currentBoard(position(1)+ik, position(2)+ik) ~= 0
                    break;
                end
            else
                break
            end
        end
        
        for ik = 1:7
            if position(1) - ik > 0 && position(2) - ik > 0 && position(1) - ik <= 8 && position(2) - ik <= 8 && currentBoard(position(1)-ik, position(2)-ik) >= 0
                possibleMoves{numberofMoves} = [position, position - ik];
                possibleMoves{numberofMoves}(5) = currentBoard(position(1)-ik, position(2)-ik);
                numberofMoves = numberofMoves + 1;
                if currentBoard(position(1)-ik, position(2)-ik) ~= 0
                    break;
                end
            else
                break
            end
        end
        for ik = 1:7
            if (position(1) + ik) > 0 && (position(2) - ik) > 0 && (position(1) + ik) <= 8 && (position(2) - ik) <= 8 && currentBoard(position(1)+ik, position(2)-ik) >= 0
                possibleMoves{numberofMoves} = [position, position(1) + ik, position(2) - ik];
                possibleMoves{numberofMoves}(5) = currentBoard(position(1)+ik, position(2)-ik);
                numberofMoves = numberofMoves + 1;
                if currentBoard(position(1)+ik, position(2)-ik) ~= 0
                    break;
                end
            else
                break
            end
        end
        for ik = 1:7
            if (position(1) - ik) > 0 && (position(2) + ik) > 0 && (position(1) - ik) <= 8 && (position(2) + ik) <= 8 && currentBoard(position(1)-ik, position(2)+ik) >= 0
                possibleMoves{numberofMoves} = [position, position(1) - ik, position(2) + ik];
                possibleMoves{numberofMoves}(5) = currentBoard(position(1)-ik, position(2)+ik);
                numberofMoves = numberofMoves + 1;
                if currentBoard(position(1)-ik, position(2)+ik) ~= 0
                    break;
                end
            else
                break
            end
        end
    end
        