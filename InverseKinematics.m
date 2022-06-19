clear;
clc;

%% parameters 
syms t1 t2 t3
a2 = 1.1582;   
a3 = 0.7582;  
d1 = 82;

Px = a3*cos(t2+t3)*cos(t1) + a2*cos(t2)*cos(t1);
Py = a3*cos(t2+t3)*sin(t1) + a2*cos(t2)*sin(t1);
Pz = a3*sin(t2+t3) + a2*sin(t2) + d1;

Px = input (' Insert X-coordinate: ');
Py = input (' Insert Y-coordinate: ');
Pz = input (' Insert Z-coordinate: ');


%% Inverse Kinematics

t1 = atan2(Py,Px);
r = sqrt(Px^2 + Py^2);
D = sqrt((Pz - d1)^2 + r^2);
t3 = cos(( (Pz - d1)^2 + Px^2 + Py^2 - a3^2 -a2^2 )/ (2*a2*a3) );
t2 = atan2(r, Pz - d1) - atan2(a2 + a3*cos(t3), a3*sin(t3));

theta1 = rad2deg(t1);
theta2 = rad2deg(t2);
theta3 = rad2deg(t3);
