%% Two-Tank Liquid Level Control System (Series Tanks)
% This script models, controls, and simulates a two-tank liquid level system
% using a PI controller and analyzes the closed-loop response.

clc;
clear;
close all;

% Step 1: Define Physical Parameters of the System

A1 = 1;        % Cross-sectional area of Tank 1 (m^2)
A2 = 1;        % Cross-sectional area of Tank 2 (m^2)

R1 = 1;        % Hydraulic resistance between Tank 1 and Tank 2
R2 = 1;        % Hydraulic resistance at Tank 2 outlet

% These parameters are assumed constant and represent
% flow resistance and tank geometry

% Step 2: Define the Plant Transfer Function
% Derived from mass balance equations:
%
% A1 dh1/dt = Qin - (h1 - h2)/R1
% A2 dh2/dt = (h1 - h2)/R1 - h2/R2
%
% Final transfer function:
% H2(s)/Qin(s)

num = [1];    % Numerator of transfer function
den = [A1*A2*R1*R2  A1*R1 + A2*(R1 + R2)  1];

Gp = tf(num, den);

% Step 3: Define the PI Controller
% Controller transfer function:
% Gc(s) = Kp + Ki/s

Kp = 5;        % Proportional gain
Ki = 2;        % Integral gain

Gc = pid(Kp, Ki);

% Step 4: Open-Loop System

Gol = series(Gc, Gp);

% Step 5: Closed-Loop System with Unity Feedback

Gcl = feedback(Gol, 1);

% Step 6: Time-Domain Simulation (Step Response)

figure;
step(Gcl);
grid on;
title('Closed-Loop Step Response of Two-Tank System');
xlabel('Time (seconds)');
ylabel('Tank 2 Liquid Level');

% Step 7: Additional System Analysis

figure;
pzmap(Gcl);
grid on;
title('Pole-Zero Map of the Closed-Loop System');

figure;
stepinfo(Gcl)
