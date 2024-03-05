% Define the transfer function Gs
s = tf('s');
Gs = tf1; % Your transfer function

% Design PID controller using pidtune
Cs = pidtune(Gs, 'PID');

% Create the closed-loop system
Gc = feedback(Cs*Gs, 1);

% Plot step response of the closed-loop system
step(Gc);
