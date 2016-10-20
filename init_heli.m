% This file contains the initialization for the helicopter assignment in
% the course TTK4115. Run this file before you execute QuaRC_ -> Build 
% to build the file heli_q8.mdl.

% Oppdatert høsten 2006 av Jostein Bakkeheim
% Oppdatert høsten 2008 av Arnfinn Aas Eielsen
% Oppdatert høsten 2009 av Jonathan Ronen
% Updated fall 2010, Dominik Breu
% Updated fall 2013, Mark Haring
% Updated spring 2015, Mark Haring

%%%%%%%%%%% Calibration of the encoder and the hardware for the specific
%%%%%%%%%%% helicopter
Joystick_gain_x = 1;
Joystick_gain_y = -1;

%%%%%%%%%%% Physical constants
g = 9.81; % gravitational constant [m/s^2]
l_c = 0.46; % distance elevation axis to counterweight [m]
l_h = 0.66; % distance elevation axis to helicopter head [m]
l_p = 0.175; % distance pitch axis to motor [m]
m_c = 1.92; % Counterweight mass [kg]
m_p = 0.72; % Motor mass [kg]
J_p = 2*m_p*l_p*l_p;
J_e = m_c*l_c*l_c + 2*m_p*l_h*l_h;
J_lambda = m_c*l_c*l_c + 2*m_p*(l_h*l_h+l_p*l_p);
K_f = 0.1556;
V_zero_offset = 6.4201;

K_1 = K_f*l_p/J_p;
K_2 = K_f*l_h/J_e;
K_3 = (((m_c*l_c - 2*m_p*l_h)*g) * (K_f))/((K_f*l_h) * (J_lambda));

%% Part 3 Problem 1-2
A_p3p1 = [0,1,0;
     0,0,0;
     0,0,0];
B_p3p1 = [0,0;
     0,K_f*l_p/J_p;
     K_f*l_h/J_e,0];
C_p3p1 = [1,0,0;
     0,0,1];

p_p3p2 = 10;
pdot_p3p2 = 1;
edot_p3p2 = 1000;
Q_p3p2 = [p_p3p2, 0, 0;
     0, pdot_p3p2, 0;
     0, 0, edot_p3p2];
Vs_p3p2 = 1;
Vd_p3p2 = 1;
R_p3p2 = [Vs_p3p2, 0;
     0, Vd_p3p2];
K_p3p2 = lqr(A_p3p1,B_p3p1,Q_p3p2,R_p3p2);
P_p3p2 = inv(C_p3p1*inv(B_p3p1*K_p3p2-A_p3p1)*B_p3p1);

%% Part 3 Problem 3
A_p3p3 = [0,1,0,0,0;
     0,0,0,0,0;
     0,0,0,0,0;
     1,0,0,0,0;
     0,0,1,0,0];
B_p3p3 = [0,0;
     0,K_f*l_p/J_p;
     K_f*l_h/J_e,0;
     0,0;
     0,0];
C_p3p3 = [1,0,0,0,0;
     0,0,1,0,0];

p_p3p3 = 10;
pdot_p3p3 = 1;
edot_p3p3 = 1000;
p_err_p3p3 = 0.1;
e_err_p3p3 = 5;

scaleFactor = 1;
Q_p3p3 = [p_p3p3*scaleFactor, 0, 0,0,0;
     0, pdot_p3p3*scaleFactor, 0,0,0;
     0, 0, edot_p3p3*scaleFactor,0,0;
     0,0,0,p_err_p3p3*scaleFactor,0;
     0,0,0,0,e_err_p3p3*scaleFactor];
Vs_p3p3 = 1;
Vd_p3p3 = 1;
R_p3p3 = [Vs_p3p3, 0;
     0, Vd_p3p3];
%sys_p3p3 = ss(A_p3p1,B_p3p1,C_p3p1,0);
%K_p3p3 = lqi(sys_p3p3,Q_p3p3,R_p3p3)
K_p3p3 = lqr(A_p3p3,B_p3p3,Q_p3p3,R_p3p3);
P_p3p3 = inv(C_p3p1*inv(B_p3p1*K_p3p3(1:2,1:3) - A_p3p1)*B_p3p1);


%% Part 4 Problem 1
A_p4p2 = [
    0,1,0,0,0,0;
    0,0,0,0,0,0;
    0,0,0,1,0,0;
    0,0,0,0,0,0;
    0,0,0,0,0,1;
    K_3,0,0,0,0,0];
B_p4p2 = [
    0,0;
    0,K_f*l_p/J_p;
    0,0;
    K_f*l_h/J_e,0;
    0,0;
    0,0];
C_p4p2 = [
    1,0,0,0,0,0;
    0,0,1,0,0,0;
    0,0,0,0,1,0];

%O_p4p2 = obsv(A_p4p2



%% Observer

es = eig(A_p3p3-B_p3p3*K_p3p3);
r0 = max(abs(es));

% Radial multiplier & sector
fr = 1;
phi = pi/8;
r   = r0*fr;
spread = -phi:(phi/(2.5)):phi;

poles = -r*exp(1i*spread);
figure(1)
%plot(real(es),imag(es),'or',real(poles),imag(poles),'kx');grid on; axis equal
title('Poles of A-LC')
 
L = place(A_p4p2',C_p4p2',poles).';

%% Plotting time
%Plot pitch rate
figure(2);
hold on;
plot(x.time, x.signals.values(1 + 0*(end/6):((0+1)*end/6)));
plot(xhat.time, xhat.signals.values(1 + 0*(end/6):((0+1)*end/6)), 'r');
legend('Pitch rate','Pitch rate est')
title('Pitch rate comparison')
hold off;

%Plot elevation rate
figure(3);
hold on;
plot(x.time, x.signals.values(1 + 3*(end/6):((3+1)*end/6)));
plot(xhat.time, xhat.signals.values(1 + 3*(end/6):((3+1)*end/6)), 'r');
legend('Elevation rate','Elevation rate est')
title('Elevation rate comparison')
hold off;

%Plot travel rate
figure(4);
hold on;
plot(x.time, x.signals.values(1 + 5*(end/6):((5+1)*end/6)));
plot(xhat.time, xhat.signals.values(1 + 5*(end/6):((5+1)*end/6)), 'r');
legend('Travel rate','Travel rate est')
title('Travel rate comparison')
hold off;


