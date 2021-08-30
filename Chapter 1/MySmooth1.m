I = imread('C:\Program Files\MATLAB\R2021a\toolbox\images\imdata\bag.png');
%mesh(I);
figure;
imshow(I)
Ismt = MySmooth(I);
Ismt = MySmooth(Ismt);
%mesh(Ismt);
figure;
imshow(Ismt)
function sImg = MySmooth(img)

    [rows, columns, ~] = size(img);
    y = rows;
    x = columns;
    for iRow = 2:y-1
        for iCol = 2:x-1
            a = sum(img(iRow-1:1:iRow+1,iCol-1:1:iCol+1));
            img(iRow,iCol) = sum(a(:)) / 9;
        end
    end
    for iCol = 2:x-1
        img(1,iCol) = sum(sum(img(1:1:2,iCol-1:1:iCol+1))) / 6;
    end
    
    for iCol = 2:x-1
        img(y,iCol) = sum(sum(img(y-1:1:y,iCol-1:1:iCol+1))) / 6;
    end
    
    for iRow = 2:y-1
        img(iRow,1) = sum(sum(img(iRow-1:1:iRow+1,1:1:2))) / 6;
    end
    
    for iRow = 2:y-1
        img(iRow,x) = sum(sum(img(iRow-1:1:iRow+1,x-1:1:x))) / 6;
    end
    
    img(1,1) = sum(sum(img(1:1:2,1:1:2))) / 3;
    img(y,1) = sum(sum(img(y-1:1:y,1:1:2))) / 3;
    img(1,x) = sum(sum(img(1:1:2,x-1:1:x))) / 3;
    img(y,x) = sum(sum(img(y-1:1:y,x-1:1:x))) / 3;

sImg = img;      
end
