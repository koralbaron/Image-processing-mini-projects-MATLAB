%red
I1=zeros(64,64,3);
I1(:,:,1)=0;
I1(:,:,2)=1;
I1(:,:,3)=1;
I1=hsv2rgb(I1);
%light red
I2=zeros(64,64,3);
I2(:,:,1)=0;%hue
I2(:,:,2)=0.5;%saturation
I2(:,:,3)=1;%value
I2=hsv2rgb(I2);
R = {I1 I2};

%green
I1=zeros(64,64,3);
I1(:,:,1)=0.333;
I1(:,:,2)=1;
I1(:,:,3)=1;
I1=hsv2rgb(I1);
%light green
I2=zeros(64,64,3);
I2(:,:,1)=0.333;%hue
I2(:,:,2)=0.5;%saturation
I2(:,:,3)=1;%value
I2=hsv2rgb(I2);
G = {I1 I2};

%blue
I1=zeros(64,64,3);
I1(:,:,1)=0.666;
I1(:,:,2)=1;
I1(:,:,3)=1;
I1=hsv2rgb(I1);
%light green
I2=zeros(64,64,3);
I2(:,:,1)=0.666;%hue
I2(:,:,2)=0.5;%saturation
I2(:,:,3)=1;%value
I2=hsv2rgb(I2);
B = {I1 I2};

montage([R G B], 'size', [3 2]);