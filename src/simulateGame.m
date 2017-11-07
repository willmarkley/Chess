function [numWwins, numBwins, numDraws] = simulateGame(numSimulations, whiteAlg, blackAlg)

    % This function simulates a number of games WITHOUT displaying anything
    % in the GUI. It returns the number of times black wins and white wins. 


numWwins = 0;
numBwins = 0;
numDraws = 0;

hwb = waitbar(0, 'Calculating...', 'Name', 'Running Game Simulations');

for igame = 1:numSimulations 
    waitbar(igame/numSimulations, hwb);
    
    winner = playGameV2(whiteAlg, blackAlg);
    
    switch winner
        case 'white'
            numWwins = numWwins +1;
        case 'black'
            numBwins = numBwins +1;
        case 'none'
            numDraws = numDraws +1;
    end

end

disp(['White: ' , num2str(numWwins)]);
disp(['Black: ' , num2str(numBwins)]);
disp(['Draws: ' , num2str(numDraws)]);



close(hwb);


