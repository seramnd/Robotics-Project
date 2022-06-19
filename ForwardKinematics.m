clear
clc
syms t1 t2 t3 

%% DH parameters
%Link 1
a1 = 0;      alpha1 = 90;  d1 = 82;     theta1 = t1;
%Link 2
a2 = 1.1582; alpha2 = 0;   d2 = -0.182; theta2 = t2;
%Link3
a3 = 0.7582; alpha3 = 0;   d3 = 0.182;  theta3 = t3;


%% Forward kinematics
A_01 = DH(  a1 , alpha1 , d1 , theta1);
A_12 = DH(  a2 , alpha2 , d2 , theta2);
A_23 = DH(  a3 , alpha3 , d3 , theta3);
 
A_03 = simplify(A_01 * A_12 * A_23);

%% Inverse kinematics
A_13 = simplify(A_12 * A_23);

%velocity expression
Px = A_03(1,4);
Py = A_03(2,4);
Pz = A_03(3,4);




%% INVERSE KINEMATICS



 
