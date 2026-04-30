%% 1.4 - Velocity v(t) and Plot
% 22914927

% System parameters
m  = 5;       % mass [kg]
k  = 2000;    % spring stiffness [N/m]
x0 = 0.02;    % initial displacement [m]

% Natural angular frequency [rad/s]
wn = sqrt(k/m);

% Time vector
t = linspace(0, 5, 1000);   % 0 to 5 seconds, 1000 points

% Displacement and Velocity
x = x0 * cos(wn * t);           % x(t) = x0*cos(wn*t) Displacement
v = -x0 * wn * sin(wn * t);     % v(t) = -x0*wn*sin(wn*t) velocity

% Solution
fprintf('Velocity equation: v(t) = -%.4f * sin(%.4f * t)\n', x0*wn, wn);
fprintf('Max velocity amplitude : %.4f m/s\n',  x0*wn);
fprintf('At t = 0 s : v = %.4f m/s\n', v(1));

% Plot velocity
figure;
plot(t, v, 'r', 'LineWidth', 1.5);

% Labels and formatting
title('Velocity vs Time - Undamped Free Vibration');
xlabel('Time (s)');
ylabel('Velocity v(t) [m/s]');
grid on;
xlim([0 5]);% x-axis limits
ylim([-0.45 0.45]); %Y-axis limits

% Annotate key values
yline( x0*wn, '--b', 'Max Velocity = +0.4 m/s', 'LabelHorizontalAlignment', 'left');
yline(-x0*wn, '--b', 'Max Velocity = -0.4 m/s', 'LabelHorizontalAlignment', 'left');
yline(0,      '--k', 'Equilibrium',               'LabelHorizontalAlignment', 'right');