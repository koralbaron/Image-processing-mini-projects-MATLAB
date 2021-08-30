%I = imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\liftingbody.png');
I = imread('C:\Users\Koral\Desktop\girlface.jpg');
I = rgb2gray(I);
figure;
imshow(I);
Ib = error_diffusion(I);
figure;
imshow(Ib);

function Ib = error_diffusion(img)
    [rows, columns, ~] = size(img);
    err = zeros(rows+1, columns+1);
    Ib = zeros(size(img));
    a = double(img);
    
    for c = 1:columns
        for r = 1:rows
            if(a(r,c) + err(r,c))< 128
                Ib(r,c) = 0;
            else
                Ib(r,c) = 255;
            end
            diff = (a(r,c)+err(r,c)) - Ib(r,c);
            err(r+1,c) = err(r+1,c) + diff*3/8;
            err(r,c+1) = err(r,c+1) + diff*3/8;
            err(r+1,c+1) = err(r+1,c+1) + diff*1/4;
        end
    end
    Ib = uint8(Ib);
end