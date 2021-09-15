%Low Pass Filter
function [y,Hz] = l_p_f(sig, Fst, L, C, R)
%extra


F = 1:1:Fst;
T = 1/Fst;
z= exp(1i*2*pi*F*T);

num = 1 + 2*z.^-1 + z.^-2;
den = ((((2*Fst).^2)*L*C)+1+(2*Fst)*L/R) + (2-2*L*C*((2*Fst).^2)) * z.^-1 + ((((2*Fst).^2)*L*C)-L/R*2*Fst+1) * z.^-2;
Hz = num./den;
%fi_extra

numerador = [1 2 1];
denominador = [((((2*Fst).^2)*L*C)+1+(2*Fst)*L/R) (2-2*L*C*((2*Fst).^2)) ((((2*Fst).^2)*L*C)-L/R*2*Fst+1)];

y=filter(numerador,denominador, sig); %sig->input

end