I = imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\cameraman.tif');
II =imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\circles.png');
figure;
imshow(I);
Itone = HalfToning(I);
figure;
imshow(Itone);
function myTon = HalfToning(I)
    myTon = zeros(2*size(I));
    [rows, columns, ~] = size(I);
    for r = 1:rows-1
        for c = 1:columns-1
            pixelValue = I(r,c);
            %disp(pixelValue)
            center = 0;
            centerRight = 0;
            centerDown = 0;
            centerDownRight = 0;
            
            if pixelValue >= 51 && pixelValue <= 101
                centerDown = 255;
            elseif pixelValue >= 102 && pixelValue <= 152
                centerRight = 255;
                centerDown = 255;
                
            elseif pixelValue >= 153 && pixelValue <= 203
                centerRight = 255;
                centerDown = 255;
                centerDownRight = 255;
            elseif pixelValue >= 204 
                center = 255;
                centerRight = 255;
                centerDown = 255;
                centerDownRight = 255;  
            end
            myTon(2*r,2*c) = center;  
            if (2*r +1) <= rows * 2
                myTon(2*r +1,2*c) = centerDown;
            end
            if (2*c +1) <= columns * 2
                myTon(2*r,2*c + 1) = centerRight;
            end   
            
            if (2*r +1) <= rows * 2 && (2*c + 1) <= columns * 2
                myTon(2*r +1,2*c +1) = centerDownRight;
            end           
            
        end
    end
end

