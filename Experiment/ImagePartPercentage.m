function [I,patch,v] = ImagePartPercentage( img_id,part_id,percent)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
addpath('../fetch');

box=fetchBoundBox(img_id);

w=box(3)*percent(1);
h=box(4)*percent(2);

[I,patch,v]=ImagePartBoundingBox(img_id,part_id,w,h);
end

