%show RED
I = zeros(64,64,3);
I(:,:,1)=255;
I(:,:,2)=0;
I(:,:,3)=0;
imshow(I/255);
%show less of RED
I(:,:,1)=128;
imshow(I/255);
%show YELLOW
I(:,:,1)=255;
I(:,:,2)=255;
I(:,:,3)=0;
imshow(I/255);


