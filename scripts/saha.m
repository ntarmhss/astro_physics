% Ypologizei tin eksisosi SAHA (Ni+1/Ni) gia metavlites thermokrasies,
% pieseis h arithmikes puknotites kai gia olous tous ionismous tou udrogonou

% Inputs: thermokrasia T, pe, ne se mia metavliti A, stoixeio, j
% Outputs: saha ratio, oros pieshs e, timh sunartisis epimerismou, oros
% boltzmann

function [ratio, pressurefactor, thermicalfactor, boltzmann factor] = saha(T,A);

% validations
if any( T<= 0)
    error('H thermokrasia prepei na einai thetiki bro');
end

% fusikes statheres
kB = 8.617333262e-5; % Boltzmann stathera [eV/K]
h = 4.135667696e-15; % Planck stathera [eV*s]
me = 9.1093837015e-31; % maza hlektroniou [kg]

% assign ths timhs pou edwse o xrhsths stin swsti metavliti me vasi tin
% taksi megethous tis

if all(A <= 10^6) 
    Pe = A; 

elseif all(A>=10^15) 
    Pe = A*kB*T;
else % times endiamesa apo tis proanaferomenes einai obv lathos
    error('Gia ksanades ti leei i ekfonisi kai vale tis swstes times')
end

