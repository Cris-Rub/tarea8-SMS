clear all;
close all hidden;
clc;

[t, x] = ode45(@motor_fcn, [0 10], [0 0]);

%% PARAMETROS
L = 0.023;
R = 2;
Kv = 0.01;
J = 0.001;
B = 0.0012;
Kt = 0.01;

num = Kt;
den = [J ((B*L)+(J*R)) ((B*R)+(Kt*Kv))];
Gs = tf(num, den);

% open('motor22b.slx');

%% GRAFICACIÓN DE RESULTADOS
figure;
plot(t, x(:, 1));
grid on
title("1");
xlabel("Tiempo");
ylabel("rad/s");