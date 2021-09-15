function [triangle]= fTriangular(A, Fo, t) 
    
    Ftrian=Fo;
    K=(length(t)/Ftrian)/4+1;
    
    punt1 = linspace(0, A, K); 
    punt2 = linspace(A, 0, K); 
    punt3 = linspace(0, -A, K); 
    punt4 = linspace(-A, 0, K); 
    
    periode  =  [punt1,  punt2(2:end),  punt3(2:end), punt4(2:end-1)];
    triangle = repmat(periode, [1 Ftrian]);   
    
end

