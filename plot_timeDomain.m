function plot_timeDomain (input, trin, s_comp, output, tt, interval, im)
    subplot(3,2,1);
    plot(tt(interval), input(interval)); grid on; axis tight; title Input;
    
    subplot(3,2,2);
    plot(tt(interval), trin(interval)); title Triangular;
    
    subplot(3,2,3); 
    plot(tt(interval),s_comp(interval)); grid on; axis tight; title PWM;
  
    subplot(3,2,4);
    plot(tt(interval),output(interval)); grid on; axis tight; title Output;
    
    subplot(3,1,3)
    image(im); axis off;
end