%% HW4
% This is Carina Vallefuoco's Homework 4.
%% Problem 1
img=imread('imgVall.jpg'); % read in the image
img=im2double(img); % converts image to double percision
new=img(:,:,[1,3,2]); % switchs the green and blue
enhanced=imadjust(img,[0.2 0.9],[]); % enhanced the image for personal use
subplot(1,3,1),imshow(img),title('Original Image') % displays original
subplot(1,3,2),imshow(new),title('Blue/Green Switch') % displays blue/green switch on same figure
subplot(1,3,3),imshow(enhanced),title('Enhanced Image') % displays enhanced image on same figure
%%
% We can see the blue green switched image turns the yellow and brown
% values to pink and red while the brighter white values slightly turn
% green.
%
% I am happy with the final enhanced image because of the contrast with
% the dark and light colors. The saturation of color is more bold than the
% original. 
%% Problem 2
close all % close all previous figures
k=[1 1 1;1 1 1;1 1 1]; % first kernel
convVall % calls convolution file
kerVall1=newImg; % assigns the new img with the kernel to kerVall1
k=[0 -1 0;-1 4 -1;0 -1 0]; % second kernel
convVall % calls convolution file
kerVall2=newImg; % assigns the new img with the kernel to kerVall2
k=[1 2 1;2 4 2;1 2 1]; % third kernel
convVall % calls convolution file
kerVall3=newImg; % assigns the new img with the kernel to kerVall3
subplot(1,4,1),imshow(img),title('Original') % displays the original image
subplot(1,4,2),imshow(kerVall1),title('Kernel 1') % displays the image with the first kernel applied on same figure
subplot(1,4,3),imshow(kerVall2),title('Kernel 2') % displays the image with the second kernel applied on same figure
subplot(1,4,4),imshow(kerVall3),title('Kernel 3') % displays the image with the third kernel applied on same figure
%%
% In Kernel 1, we can see that there is a split blur of the original image.
% This makes sence because the kernel is all 1's and it averages the area
% with its closest neighbors.
%
% In Kernel 2, we can see that the image is very dark, almost black.
%
% In Kernel 3, i used the Gaussian blur which is also know as Gaussian
% smoothing. This was applied to reduce image noise and reduce detail.
%% Link to this website and m-file
%
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/hw4Vall.html hw4Vall.html>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/hw4Vall.m hw4Vall.m>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/convVall.m convVall.m>
