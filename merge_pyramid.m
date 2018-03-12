function [ output_pyr ] = merge_pyramid( pyr_1, pyr_2, N )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    len = size(pyr_1, 2);
    output_pyr = cell(1, len);
    for i=1:len
        if i <= N
            output_pyr{i} = pyr_1{i};
        else
            output_pyr{i} = pyr_2{i};
        end
    end
end

