%% @Author: Solayman Hossain Emon
%% @email: solayman.emon07@gmail.com

function[Q,R] = CGS(A) % Classical Gram-Schmidt (CGS)
[m,n] = size(A);

Q = zeros(m,n);
R = zeros(n,n);
v = A;

for j = 1:n
    v(:,j) = A(:,j);
    for i = 1:j-1
        R(i,j) = Q(:,i)'*A(:,j);
        v(:,j) = v(:,j) - R(i,j)*Q(:,i);
    end
    R(j,j) = norm(v(:,j));
    Q(:,j)= v(:,j)/R(j,j);

end











