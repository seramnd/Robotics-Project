function DHtable = DHworkspace(matrix)

theta = matrix(1);
d_n   = matrix(2);
an_1  = matrix(3);
alpha = matrix(4);

sa = sin(alpha);
ca = cos(alpha);
st = sin(theta);
ct = cos(theta);

DHtable = [ ct    -ca*st     sa*st   an_1*ct ;
            st     ca*ct    -sa*ct   an_1*st ;
             0      sa        ca       d_n   ;
             0       0         0        1   ];
end