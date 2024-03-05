clc; 
close all; 
clear;

% Step 1: Data Generation
s = tf('s');

% Define a transfer function with at least one zero and of order greater than 2
G = (s + 2)/(0.1*s^3+4*s^2+8*s+9); 

% Set sampling interval
dt = 0.0001; % for example

% Define time vector
t = 0:dt:8;

% Generate input signal (step input)
u = ones(length(t),1);
u(1:1/dt) = 0; % set first 10 samples to zero

% Generate response from G
y = lsim(G,u,t);

% Add noise to the response
y = y + randn(length(t),1)*0.002; % add noise to response

% Plot input and output data
plot(t,[u,y]); 
axis([0 8 0 1.2]);
xlabel('Time');
ylabel('Amplitude');
legend('Input (u)', 'Output (y)');
title('Input-Output Data Generation');