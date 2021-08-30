I = imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\cameraman.tif');
figure;
imshow(I);
%I=(I>105);
%figure;
%imshow(I);
Itone = HalfToning(I);
figure;
imshow(Itone);
function myTon = HalfToning(I)
    myTon = zeros(2*size(I));
    myTon(1:1:end,1:1:end) = 255;
    figure;
    imshow(myTon);
    [rows, columns, ~] = size(I);
    for r = 1:rows-1
        for c = 1:columns-1
            if I(r,c) >= 0 && I(r,c) <= 50
                myTon(2*r,2*c) = 0;
                myTon(2*r,2*c +1) = 0;
                myTon(2*r +1,2*c) = 0;
                myTon(2*r +1,2*c +1) = 0;
            elseif I(r,c) >= 51 && I(r,c) <= 101
                myTon(2*r,2*c) = 0;
                myTon(2*r,2*c +1) = 0;
                myTon(2*r +1,2*c) = 255;
                myTon(2*r +1,2*c +1) = 0;
            elseif I(r,c) >= 102 && I(r,c) <= 152
                myTon(2*r,2*c) = 0;
                myTon(2*r,2*c +1) = 255;
                myTon(2*r +1,2*c) = 255;
                myTon(2*r +1,2*c +1) = 0;
            elseif I(r,c) >= 153 && I(r,c) <= 203
                myTon(2*r,2*c) = 0;
                myTon(2*r,2*c +1) = 255;
                myTon(2*r +1,2*c) = 255;
                myTon(2*r +1,2*c +1) = 255;
            elseif I(r,c) >= 204 && I(r,c) <= 255
                myTon(2*r,2*c) = 255;
                myTon(2*r,2*c +1) = 255;
                myTon(2*r +1,2*c) = 255;
                myTon(2*r +1,2*c +1) = 255;
            end
        end
    end
    
    r=rows;
    for c = 1:columns-1
        if I(r,c) >= 0 && I(r,c) <= 50
            myTon(2*r,2*c) = 0;
            myTon(2*r,2*c +1) = 0;
        elseif I(r,c) >= 51 && I(r,c) <= 101
            myTon(2*r,2*c) = 0;
            myTon(2*r,2*c +1) = 0;
        elseif I(r,c) >= 102 && I(r,c) <= 152
            myTon(2*r,2*c) = 0;
            myTon(2*r,2*c +1) = 255;
        elseif I(r,c) >= 153 && I(r,c) <= 203
            myTon(2*r,2*c) = 0;
            myTon(2*r,2*c +1) = 255;
        elseif I(r,c) >= 204 && I(r,c) <= 255
            myTon(2*r,2*c) = 255;
            myTon(2*r,2*c +1) = 255;
        end
    end
    c=columns;
    for r = 1:rows-1
        if I(r,c) >= 0 && I(r,c) <= 50
            myTon(2*r,2*c) = 0;
            myTon(2*r +1,2*c) = 0;
        elseif I(r,c) >= 51 && I(r,c) <= 101
            myTon(2*r,2*c) = 0;
            myTon(2*r +1,2*c) = 255;
        elseif I(r,c) >= 102 && I(r,c) <= 152
            myTon(2*r,2*c) = 0;
            myTon(2*r +1,2*c) = 255;
        elseif I(r,c) >= 153 && I(r,c) <= 203
            myTon(2*r,2*c) = 0;
            myTon(2*r +1,2*c) = 255;
        elseif I(r,c) >= 204 && I(r,c) <= 255
            myTon(2*r,2*c) = 255;
            myTon(2*r +1,2*c) = 255;
        end
    end
    
    r = rows;
    c = columns;
    if I(r,c) >= 0 && I(r,c) <= 50
        myTon(2*r,2*c) = 0;
    elseif I(r,c) >= 51 && I(r,c) <= 101
        myTon(2*r,2*c) = 0;
    elseif I(r,c) >= 102 && I(r,c) <= 152
        myTon(2*r,2*c) = 0;
    elseif I(r,c) >= 153 && I(r,c) <= 203
        myTon(2*r,2*c) = 0;
    elseif I(r,c) >= 204 && I(r,c) <= 255
        myTon(2*r,2*c) = 255;
    end
end
