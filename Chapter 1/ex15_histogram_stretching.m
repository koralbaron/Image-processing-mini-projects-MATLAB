I = imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\kobi.png');
GrayI = rgb2gray(I); 
HistI = histeq(GrayI);
rgbI = ind2rgb(HistI,jet);
figure;
imshow(rgbImage);
montage({I GrayI HistI rgbI});

