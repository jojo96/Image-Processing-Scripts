aa= imread('C:\Users\hpw\Desktop\temp2\r1.png');%add image path here
bb=aa;

im1=(aa(:,:,1));
im2=(aa(:,:,2));
im3=(aa(:,:,3));
s=size(im1);
%newim=ones(s(1),s(2));
newim1=0*im1;
newim2=0*im2;
newim3=0*im3;
%im=im(2:s(1)-1,2:s(2)-1);
imshow(bb);
hold on;
for i=15:3:s(1)-15
    for j=15:3:s(2)-15

        bb=insertShape(bb,'filledcircle',[i j 15],'Color', impixel(aa,i,j));%[i j 15]--->i,j indicate the pixel coordinates, radius=15 here. Can change radius for more or less swirls  
    end
end

imshow(bb)
