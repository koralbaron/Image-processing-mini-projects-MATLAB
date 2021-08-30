I = imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\kobi.png');
M = double([0.299 0.587 0.114; 0.596 -0.275 -0.321; 0.212 -0.523 0.311]);
YIQI = zeros(size(I));
YIQI(1,1,1) = I(1,1,1)*M(1,1)+I(1,1,2)*M(1,2)+I(1,1,3)*M(1,3);
YIQI(1,1,2) = I(1,1,1)*M(2,1)+I(1,1,2)*M(2,2)+I(1,1,3)*M(2,3);
YIQI(1,1,3) = I(1,1,1)*M(3,1)+I(1,1,2)*M(3,2)+I(1,1,3)*M(3,3);
RGB = I(1,1,1:3);
rgbVector = double(reshape(RGB,1,3));
disp(rgbVector);
Q = rgbVector * M;
%disp(size(M));

A = [1 3 5; 2 4 7];
B = [-5 8 11; 3 9 21; 4 0 8];
disp(A);
%disp(size(B));
%c = A*B;
%yiqVector = mtimes(M,rgbVector);




