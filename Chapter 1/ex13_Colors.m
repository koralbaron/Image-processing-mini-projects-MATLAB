I = zeros(64,64,3);
I1 = Colors(I,255,0,0,0);
I2 = Colors(I,255,1,0,0);
I3 = Colors(I,255,0,1,0);
I4 = Colors(I,255,0,0,1);
I5 = Colors(I,255,1,1,0);
I6 = Colors(I,255,1,0,1);
I7 = Colors(I,255,0,1,1);
I8 = Colors(I,255,1,1,1);    
montage({I1,I2,I3,I4,I5,I6,I7,I8});


function myImg =Colors(img,tone,R,G,B)
    if R==0
        img(:,:,1)=0;
    else
        img(:,:,1)=tone;

    end
    if G==0
        img(:,:,2)=0;
    else
        img(:,:,2)=tone;

    end
    if B==0
        img(:,:,3)=0;
    else
        img(:,:,3)=tone;

    end
    myImg = img;
end