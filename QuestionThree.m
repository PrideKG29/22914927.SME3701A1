%% Q1.3 - Plot Displacement vs Time
% 22914927

% System parameters
m  = 5;       % mass [kg]
k  = 2000;    % spring stiffness [N/m]
x0 = 0.02;    % initial displacement [m]

% Natural angular frequency [rad/s]
wn = sqrt(k/m);

% Time vector
t = linspace(0, 5, 1000);   % 0 to 5 seconds, 1000 points

% Displacement: x(t) = x0*cos(wn*t)
x = x0 * cos(wn * t);

% Solution
figure;
plot(t, x, 'b', 'LineWidth', 1.5);

% Labels and formatting
title('Displacement vs Time - Undamped Free Vibration');
xlabel('Time (s)');
ylabel('Displacement x(t) [m]');
grid on;
xlim([0 5]);
ylim([-0.025 0.025]);

% Annotate key values
yline(x0,  '--r', 'Amplitude = +0.02 m', 'LabelHorizontalAlignment', 'left');
yline(-x0, '--r', 'Amplitude = -0.02 m', 'LabelHorizontalAlignment', 'left');
