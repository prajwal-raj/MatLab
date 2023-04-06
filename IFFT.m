MATLAB Code
% Clear the command window
close all;
clc;
 
% Read and display the original image
Img=imread('Fig0441(a).tif');
figure, imshow(Img);
title('Input Image');
 
% Computing the fourier transform of the image using fft function
fftImg = fft2(Img);
% Using fftshift to move the zero frequency component to the center of the
% array
figure, imshow(abs(fftshift(fftImg)));
% Color images don't have a color map
colormap gray;
Imagesc(log(abs(fftshift(fftImg))));
title('Fourier transform');
 
%figure, imshow(angle(fftshift(fft(fftImg))),[-pi,pi]), colormap gray;
% Image Phase through the fourier transform
 
Inversvefft = real(ifft2(fftImg));
figure, imshow(Inversvefft);
title('Inverse fft of the image');
 
Avgvalue=mean(fftImg);
figure, imshow(Avgvalue);
