%% @Author: Solayman Hossain Emon
%% @email: solayman.emon07@gmail.com

% Construct a square matrix A 

[U, X] = qr(randn(80)); % Set U to a random orthogonal matrix
[V, X] = qr(randn(80)); % Set V to a random orthogonal matrix

S = diag(2.^(-1:-1:-80)); % Set S to a diagonal matrix

A = U*S*V;

A = single(A);  % Save A in Single Precision

[QC, RC] = CGS(A);
[QM, RM] = MGS(A);

%% Plotting

s = 2.^(-1:-1:-80);
semilogy(s,'k.');
set(gca, 'FontSize', 14, 'FontWeight', 'bold');

hold on;
semilogy(diag(RC), 'bo');

hold on;
semilogy(diag(RM), 'r*');

legend('Singular values', 'CLGS r_{jj}', 'MGS r_{jj}')
title('Gram-Schmidt in single precision')
xlabel('j')
ylabel('r_{jj}')

