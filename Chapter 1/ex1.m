In = imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\cameraman.tif');
figure;
imshow(In);
out1 = In(1:2:end,1:2:end);
figure;
imshow(out1);
out2 = zeros(size(In));
out2(1:2:end-1,1:2:end-1) = out1;

out2(2:2:end,1:2:end-1) = out1;
out2(1:2:end-1,2:2:end) = out1;
out2(2:2:end,2:2:end) = out1;
figure;
imshow(uint8(out2));


