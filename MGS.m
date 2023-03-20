%% @Author: Solayman Hossain Emon
%% @email: solayman.emon07@gmail.com

function[Q,R] = MGS(A) % Modified Gram-Schmidt (MGS)
[m,n] = size(A);

Q = zeros(m,n);
R = zeros(n,n);
v = A;

for j = 1:n
    v(:,j) = A(:,j);
end 

for i = 1:n
    R(i,i) = norm(v(:,i));
    Q(:,i) = v(:,i)/R(i,i);
    for j = i + 1:n
        R(i,j) = Q(:,i)'*v(:,j);
        v(:,j) =  v(:,j) - R(i,j)*Q(:,i);
    end
end 
    