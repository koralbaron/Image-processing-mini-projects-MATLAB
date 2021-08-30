a = fopen('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\cameraman.tif','r');
imData = fread(a);
disp(A(2))
rows = A(1);
columns = A(2);
I = fwrite(imgRaw,rows*columns,'uint8');
%imshow(I);
fclose(a);
