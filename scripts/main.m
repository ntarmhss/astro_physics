function main()

fprintf('N2/Ntotal ypologismos kai plot tis grafikis\n');

T = linspace(5000,25000,1000);

b_ratio = boltzmann(T,1,2); % N2 / N1
s_ratio = saha(T,20);  % N_II / N_I


ratio = (b_ratio ./ ( 1 + b_ratio) ) .* ( 1 ./ (1 + s_ratio)); % N2 / Ntotal

[max_val, idx] = max(ratio);
T_peak = T(idx);

disp(T_peak);
disp(max_val);
plot(T,ratio, 'LineWidth', 2);
grid on;
xlabel('Thermokrasia T (K)');
ylabel('N_2 / N_total');
title('Balmer Ntarmhs');

datacursormode on;

