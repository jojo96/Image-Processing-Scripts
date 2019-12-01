aa= imread('C:\Users\hpw\Desktop\temp2\r1.png');
im1=(aa(:,:,1));
im2=(aa(:,:,2));
im3=(aa(:,:,3));
s=size(im1);
%newim=ones(s(1),s(2));
newim1=0*im1;
newim2=0*im2;
newim3=0*im3;
%im=im(2:s(1)-1,2:s(2)-1);

for i=15:3:s(1)-15
    for j=15:3:s(2)-15
        newim1(i-10:i+10,j-10:j+10)=im1(i,j);
        newim2(i-10:i+10,j-10:j+10)=im2(i,j);
        newim3(i-10:i+10,j-10:j+10)=im3(i,j);
    end
end

rgbImage = cat(3, newim1, newim2, newim3);
