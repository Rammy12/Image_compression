clear all;
clc;
I=imread('img_5.jpg');
I2=rgb2gray(I);
%I1=I(:,:,1);
%I2=I(:,:,2);
[row,col] = size(I); 
MSE = sum(sum((im2double(I2)-im2double(I)).^2))/(row*col); 
PSNR = 10*log10(1/MSE);

disp(num2str(PSNR));
disp(num2str(MSE));