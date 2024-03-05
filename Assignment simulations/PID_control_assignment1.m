
% Step 2: PID Controller Design
Gs = tf1; 

% PID Controller Design
Kp = 1.2;
Ki = 0.6;
Kd = 0.1;
controller = pid(Kp, Ki, Kd);

% Closed-loop system
sys_cl = feedback(Gs*controller, 1);

% Step 3: Visualize Step Response
figure;
step(sys_cl);
title('Step Response of the Controlled Plant');
xlabel('Time');
ylabel('Amplitude');