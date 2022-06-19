clear 
clc
%% Initialise DH paramaters

t1=0;
t2=0;
t3=0;
a2 = 1.1582;
a3 = 0.7582;
d1 = 82 ;
d2 = -0.182;
d3 = 0.182;
n=0;

%% DH Table
for t1= -pi/2 : 0.2 : pi/2     
    for t2= 0 : 0.2 : 3*pi/4 
        for t3= -3*pi/4 : 0.2 : 0
          
   
n=n+1;  
%link =[  theta     d       a        alpha     ]
link1= [   t1      d1       0     deg2rad(90)  ];
link2= [   t2      d2      a2         0        ];
link3= [   t3      d3      a3         0        ];


A03= DHworkspace(link1)*DHworkspace(link2)*DHworkspace(link3);
xyz_cor(n,:) = [A03(1:3,4); t1; t2 ;t3];
        end
    end
end

%% Figure
figure (1);
scatter3(xyz_cor(:,1),xyz_cor(:,2),xyz_cor(:,3),0.5,xyz_cor(:,3),'filled','MarkerFaceAlpha', 1);
xlabel('x')
ylabel('y')
zlabel('z')

figure (2)
scatter3(xyz_cor(:,1),xyz_cor(:,2),xyz_cor(:,3),0.5,xyz_cor(:,3),'filled','MarkerFaceAlpha', 1);
view(90,90);
xlabel('x')
ylabel('y')
zlabel('z')
title('Workspace in X-Y plane');

figure (3)
scatter3(xyz_cor(:,1),xyz_cor(:,2),xyz_cor(:,3),0.5,xyz_cor(:,3),'filled','MarkerFaceAlpha', 1);
view(90,0);
xlabel('x')
ylabel('y')
zlabel('z')
title('Workspace in Y-Z plane')

figure (4)
scatter3(xyz_cor(:,1),xyz_cor(:,2),xyz_cor(:,3),0.5,xyz_cor(:,3),'filled','MarkerFaceAlpha', 1);
view(0,0);
xlabel('x')
ylabel('y')
zlabel('z')
title('Workspace in X-Z plane')



