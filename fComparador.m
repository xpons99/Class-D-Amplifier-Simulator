function [s_comp] = fComparador(input, triangle, Fs)
    %Fst=, Fo=10, Ft=100, 
    %Fs=1000; %F = 1000;
    duration=1.0;
    l=length(input);
    
    s_comp = 0:(1/Fs):duration-(1/Fs);
    for n=1:l
          if (input(n)>=triangle(n))
              s_comp(n)=1;
          else
              s_comp(n)=-1;
          end      
    end
   
end
