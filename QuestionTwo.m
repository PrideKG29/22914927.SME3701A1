%% 1.2 - Displacement x(t)
% 22914927

% System parameters
m  = 5;       % mass [kg]
k  = 2000;    % spring stiffness [N/m]
x0 = 0.02;    % initial displacement [m]

% Natural angular frequency [rad/s]
wn = sqrt(k/m);

% Time vector
t = linspace(0, 5, 1000);   % 0 to 5 seconds, 1000 points

% Displacement equation: x(t) = x0*cos(wn*t)
x = x0 * cos(wn * t);

% Solution
fprintf('Displacement computed: x(t) = %.4f * cos(%.4f * t)\n', x0, wn);
fprintf('At t = 0 s : x = %.4f m\n', x(1));
fprintf('At t = 5 s : x = %.4f m\n', x(end));