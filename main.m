close all;
clear all;

% load images
im_1 = rgb2gray(imread('images/cat.jpg'));
im_2 = rgb2gray(imread('images/woman.jpg'));

N = 3;

[g1, l1] = gaussian_laplacian_pyramid(N, im_1);
[g2, l2] = gaussian_laplacian_pyramid(N, im_2);


for i=1:N
    imshow(g1{1, i});
    pause;
end