clear; close all; clc;
% Generate some test data
A = 2;
B = 3;
C = 2.5;
D = -1;
%%
n_generate = 200;
G = 10*rand(n_generate, 2);  % x and y test points

% compute z from plane, add noise (zero-mean!)
G(:,3) = -(A*G(:,1) + B*G(:,2) + D) / C + 0.5*randn(n_generate,1);
G(:,4) = ones(n_generate,1);   % augment your matrix

%{
    3.8045    7.8023  -11.9823    1.0000
    5.6782    0.8113   -5.1851    1.0000
    3.3712    7.9483  -12.0836    1.0000
    ...
%}

%%
[u s v] = svd(G, 0);
P = v(:,4);             % Last column is your plane equation

disp(P');
%%
[x y] = meshgrid(0:0.5:10); 
a = v(1, 4);
b = v(2, 4);
c = v(3, 4);
d = v(4, 4);
z = -1/c*(a*x + b*y + d);

%%
figure(1)
plot3(G(:, 1), G(:, 2), G(:, 3),'r.'); 
hold on;

colormap(gray);
surf(x,y,z)

grid on;
