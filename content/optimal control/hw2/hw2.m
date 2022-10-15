
%%

%Problem 1, Consider a scalar plant, x_{k+1}  = 0.5 x_{k} + 2 u_{k} with cost J = 1/2 sum_{k=0}^{N-1}, N = 5. Find the optimal control to drive the system from x_0 = 0 to x_5 = 5;

A = 0.5;
B = 2;
r_n = 5;
R = 1;
x_0 = 0;
N= 5;
G = 0;
i_out = zeros(N,1);
u_out = zeros(N,1);
for i = 0:N-1
    G = G + A^(N-i-1)*B*(R^-1)*B' *(A')^(N-i-1);
end
disp("G = ")
disp(G)

for i = 0:4
    u = R^-1 * B' * (A')^(N-i-1) * G^-1 *(r_n - A^N * x_0);
    i_out(i+1) = i;
    u_out(i+1) = u;
end
disp("i ");
disp(i_out');
disp("u ");
disp(u_out');

%%
% problem 2: Newton's law is given by x_dot = Ax + Bu = [0 1; 0 0] x = [0;1] u and the state is x = [y; dy/dt] with y being the position and u the force per unit mass input. Discretize the system using MATLAB fucntion c2d. Use sample period of T=0.5 sec. Select weighting matrics Q = I, R = I, S_N = 100 * I with I being identity matrix.

% a) Solve the Riccati difference equation to find the optimal Riccati solution. Use N = 10 sampples, so that final time is 5 sec. Plot the diagonal elements s_11 and s22 vs. time.

sys = ss([0 1; 0 0], [0; 1], [1 0], 0);


opt = c2dOptions('Method','tustin','FractDelayApproxOrder',3);
sysd = c2d(sys,0.5)

% get A and B from sysd

% solve Riccati difference equation
I = eye(2);
A = sysd.A;
B = sysd.B;
Q = I;
R = 1;
s11 = zeros([11,1]);
s22 = zeros([11,1]);
N = 10;

S = zeros([2,2,N+1]);
S(:,:, N+1) = 100 * I; % set for S_N
k = zeros([2,1,N+1]);
s11(11) = 100;
s22(11) = 100;

for k = N:-1:1 % start from N-1 to N
    S(:, :, k) = A' * (inv(S(:,:,k+1)) + B*inv(R)*B')^(-1) * A + Q;
    K(:,:,k) = (B' * S(:,:,k+1) * B + R)^(-1) * B' * S(:,:,k+1) * A;
    s11(k) = S(1,1,k);
    s22(k) = S(2,2,k);
end

u = zeros([1, 1, N+1]);
x = zeros([2, 1, N+1]);
% u (1) = u_0 actually
x(:,:,1) = [10; 10];

disp('S: '); 
disp(squeeze(S));
disp('K: '); 
disp(squeeze(K));

for k = 1:N
    u(:,:,k) = -K(:,:,k) * x(:,:,k);
    x(:,:,k+1) = A * x(:,:,k) + B * u(:,:,k);
end

disp("u: "); 
disp(squeeze(u)');


plot(s11); hold on; plot(s22); hold off;
disp('s11: ')
disp(s11')
disp('s22: ')
disp(s22')

x1 = squeeze(x(1,1,:));
disp('x1: '); disp(x1');

x2 = squeeze(x(2,1,:));
disp('x2: '); disp(x1');

u_k = squeeze(u(1,1,:));
disp('u_k: '); disp(u_k');


t = 0:0.5:5;
subplot(2,2,1);
plot(t, s11, '.', 'markersize', 16);
hold on;
plot(t, s22, '.', 'markersize', 16);
title('S_{11} and S_{22}');
subplot(2,2,2);
plot(t, x1, '.', 'markersize', 16);
title('x_1');
subplot(2,2,3);
plot(t, x2, '.', 'markersize', 16);
title('x_2');
subplot(2,2,4);
plot(t, u_k, '.', 'markersize', 16);
title('u_k');
shg

