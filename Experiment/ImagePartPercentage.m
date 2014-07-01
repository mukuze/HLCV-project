function [I,patch,v] = ImagePartPercentage( img_id,part_id,width_percent,height_percent )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
addpath('../fetch');

box=fetchBoundBox(img_id);

w=box(3)*width_percent;
h=box(4)*height_percent;

[I,patch,v]=ImagePartBoundingBox(img_id,part_id,w,h);
end

