I = imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\pout.tif');
figure;
imshow(I);
T = 105;
binImg = myThresholding(I,T);
figure;
imshow(binImg);
function binImg = myThresholding(I,T)
    Ib=(I>T);
    binImg = Ib;
end