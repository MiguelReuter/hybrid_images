function [ g_pyramid, l_pyramid ] = gaussian_laplacian_pyramid(N, im)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    g_pyramid = cell(1, N);
    l_pyramid = cell(1, N);
    
    f = im2double(im);
    for i=1:N
        l = im2double(imfilter(f, fspecial('gaussian', 7, 1)));
        h = f - l;
        
        g_pyramid{1, i} = l;
        l_pyramid{1, i} = h;
        f = f(1:2:end, 1:2:end);
    end
end

