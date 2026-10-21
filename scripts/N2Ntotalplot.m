function main()

fprintf('N2/Ntotal ypologismos kai plot tis grafikis')

T_min = input('dwse tin elaxisti T');

if isempty(T_min), T_min = 5000; end

T_max = input('dwse tin megisti T');

if isempty(T_max), T,max = 25000; end

if T_min >= T_max
    temp = T_min;
    T_min = T_max;
    T_max = T_min;
end

T = linspace(T_min,T_max,100);

b_ratio = boltzmann(T,1,2); % N2 / N1
s_ratio = saha(T,20);  % N_II / N_I

ratio = (b_ratio ./ ( 1 + b_ratio) ) .* ( 1 ./ (1 + s_ratio)); % N2 / Ntotal

