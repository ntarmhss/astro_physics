% Ypologizei tin eksisosi Boltzmann ( Nb/ Na) gia metavlites thermokrasies
% T gia tis grammes tou udrogonou
% Inputs: T, n1, n2 kvantikoi arithmoi
% Outputs: boltzmann ratio ( atoms in excited state b to lower state a ),
% energiaki diafora katastasewn

function [ratio, delta_E] = boltzmann(T, n1, n2)

% An de dwthei timh gia tous kvantikous arithmous thewrei automatos sugkekrimena
% tin grammi balmer n1 = 1, n2 = 2
if nargin < 2 || isempty(n1) % to nargin metraei poses metavlites edoses
    n1 = 1;
end

if nargin < 3 || isempty(n2)
    n2 = 2;
end

% elegxos egkurotitas dwthentwn timwn
if any( T<= 0)
    error('H thermokrasia prepei na einai thetiki bro');
end

if n1 > n2 % sou diorthwnei to lathos mono tou an dwseis n1>n2
    temp = n1;
    n1 = n2;
    n2 = temp;
end
if n1 == n2 % bruh
    error('Ise ston prwto orofo kai epeses ston prwto, posous orofous epeses?');
end

% fusikes statheres ( SI )
kB = 1.380649e-23; % Stathera Boltzmann se J/K
qe = 1.602176634e-19; % Fortio hlektroniou se Cb

% energiaki diafora metaksi katastasasewn n1 n2
delta_E_eV = 13.6 * ( (1 / (n1^2)) - (1/ (n2^2)) ); % energiaki diafora [eV]
delta_E = delta_E_eV * qe; % energiaki diafora [J]

% logos ekfilismou n-ostis energiakis stathmis
g_ratio = (n2/n1)^2;

% i eksisosi boltzmann
ratio = g_ratio .* exp(-delta_E ./ (kB .* T));

end

