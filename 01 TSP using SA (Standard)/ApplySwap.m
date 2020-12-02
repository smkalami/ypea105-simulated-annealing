%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YPEA105
% Project Title: Simulated Annealing for Traveling Salesman Problem
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, Simulated Annealing in MATLAB (URL: https://yarpiz.com/223/ypea105-simulated-annealing), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function tour2 = ApplySwap(tour1)

    n = numel(tour1);
    
    I = randsample(n, 2);
    
    i1 = I(1);
    i2 = I(2);
    
    tour2 = tour1;
    tour2([i1 i2]) = tour1([i2 i1]);
    
end