function [ g_pyramid, l_pyramid ] = gaussian_laplacian_pyramid(N, im)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    g_pyramid = cell(1, N);
    l_pyramid = cell(1, N);
    
    f = im;
    for i=1:N
        l = imfilter(f, fspecial('gaussian', 7, 1));
        h = f - l + 128;
        
        g_pyramid{1, i} = f;
        l_pyramid{1, i} = h;
        f = f(1:2:end, 1:2:end);
    end
    
%     for i=1:N
%         g_pyramid{1, i} = imresize(g_pyramid{1, i}, 2^(i-1));
%         l_pyramid{1, i} = imresize(l_pyramid{1, i}, 2^(i-1));
%     end
end

