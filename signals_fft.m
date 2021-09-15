function [fft_input, fft_trin, fft_powerAmp, fft_output] = signals_fft (input, trin, powerAmp, output)

    fft_input = fft(input, length(input));
    fft_input = fft_input / max(abs(fft_input));
    fft_trin = fft(trin, length(trin));
    fft_trin = fft_trin/max(abs(fft_trin));
    fft_powerAmp = fft(powerAmp, length(powerAmp));
    fft_powerAmp = fft_powerAmp / max(abs(fft_powerAmp));
    fft_output = fft(output, length(output));
    fft_output = fft_output/max(abs(fft_output));
end
