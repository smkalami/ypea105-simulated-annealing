%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YPEA105
% Project Title: Population-based Simulated Annealing for TSP
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, Simulated Annealing in MATLAB (URL: https://yarpiz.com/223/ypea105-simulated-annealing), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function tour2 = CreateNeighbor(tour1)

    pSwap = 0.2;
    pReversion = 0.5;
    pInsertion = 1-pSwap-pReversion;
    
    p = [pSwap pReversion pInsertion];
    
    METHOD = RouletteWheelSelection(p);
    
    switch METHOD
        case 1
            % Swap
            tour2 = ApplySwap(tour1);
            
        case 2
            % Reversion
            tour2 = ApplyReversion(tour1);
            
        case 3
            % Insertion
            tour2 = ApplyInsertion(tour1);
            
    end

end