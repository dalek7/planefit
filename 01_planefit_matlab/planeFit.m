% based on http://stackoverflow.com/questions/10900141/fast-plane-fitting-to-many-points

% Generate some test data
A = 2;
B = 3;
C = 2.5;
D = -1;

G = 10*rand(100, 2);  % x and y test points

% compute z from plane, add noise (zero-mean!)
G(:,3) = -(A*G(:,1) + B*G(:,2) + D) / C + 0.1*randn(100,1);
G(:,4) = ones(100,1);   % augment your matrix

%{
    3.8045    7.8023  -11.9823    1.0000
    5.6782    0.8113   -5.1851    1.0000
    3.3712    7.9483  -12.0836    1.0000
    ...
%}

[u s v] = svd(G, 0);
P = v(:,4);             % Last column is your plane equation

disp(P');
figure(1)
plot3(G(:, 1), G(:, 2), G(:, 3),'.'); 
grid on;