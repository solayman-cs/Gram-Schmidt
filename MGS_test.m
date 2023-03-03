A = magic(6);
A = A(:,1:4);

[Q,R] = MGS(A);

err = norm(A - Q*R);

fprintf('The norm of A-Q*R = %e \n',err);