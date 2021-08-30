I = imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\cameraman.tif');
figure;
imshow(I);
%mesh(I)
Ineg = MyNegative(I);
figure;
imshow(Ineg);
%mesh(Ineg);
function Ineg = MyNegative(I)
    [rows, columns, ~] = size(I);
    for r = 1:rows
        for c = 1:columns
            I(r,c) = 255 - I(r,c);
        end
    end
    Ineg = I;
end