%% 1.1 - Natural Angular Frequency
% 22914927

% System parameters
m = 5;        % mass [kg]
k = 2000;     % spring stiffness [N/m]

% Natural angular frequency [rad/s]
wn = sqrt(k/m);

% Solution
fprintf('Natural Angular Frequency: wn = %.4f rad/s\n', wn);