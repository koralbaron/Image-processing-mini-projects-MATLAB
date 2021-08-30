%I = imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\liftingbody.png');
I = imread('C:\Users\Koral\Desktop\girlface.jpg',1);
%I = rgb2gray(I);
figure;
imshow(I);
Ib = error_diffusion(I);
figure;
imshow(Ib);

function Ib = error_diffusion(img)
    [rows, columns, ~] = size(img);
    err = zeros(rows+2 , columns+2);
    Ib = zeros(size(img));
    a = double(img);
    
    for c = 2:columns
        for r = 2:rows
            if(a(r,c) + err(r,c))< 128
                Ib(r,c) = 0;
            else
                Ib(r,c) = 255;
            end
            diff = (a(r,c)+err(r,c)) - Ib(r,c);
            err(r+1,c) = err(r+1,c) + diff*5/16;
            err(r,c+1) = err(r,c+1) + diff*7/16;
            err(r+1,c+1) = err(r+1,c+1) + diff*1/16;
            err(r+1,c-1) = err(r+1,c-1) + diff*3/16;

        end
    end
    Ib = uint8(Ib);
end