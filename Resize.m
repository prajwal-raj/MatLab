

%Resizing the image and increasing the size 1.5 times

clear;
clc;
Img = rgb2gray(imread('image.jpg'));
figure ,imshow(img);
%img_transform=mat2gray(img);
r=mat2gray(img);
%figure, imshow(img_transform);
figure,imshow(r);
