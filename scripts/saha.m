% Ypologizei tin eksisosi SAHA (Ni+1/Ni) gia metavlites thermokrasies,
% pieseis h arithmikes puknotites kai gia olous tous ionismous tou udrogonou

% Inputs: thermokrasia T, pe, ne se mia metavliti A, stoixeio, j
% Outputs: saha ratio, oros pieshs e, timh sunartisis epimerismou, oros
% boltzmann

function [ratio, pressurefactor, thermicalfactor, boltzmann_factor] = saha(T,A);

% validations
if any( T<= 0)
    error('H thermokrasia prepei na einai thetiki bro');
end

% fusikes statheres
kB = 1.380649e-23; % Boltzmann stathera [J/K]
h = 4.135667696e-15; % Planck stathera [J*s]
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

% partition_factor
Z2 = 1;
Z1 = 2;
partition_factor = Z2 / Z1;

% pressurefactor

pressurefactor = (2*kB*T*Pe) * partition_factor;

% thermicalfactor
thermicalfactor = ((2*pi*me*kB*T)/ (h^2)).^(3/2);

% boltzmann_factor
boltzmann_factor = exp(-13.6 ./ (kB*T));

% i eksisosi saha
ratio = pressurefactor .* thermicalfactor .* boltzmann_factor;
