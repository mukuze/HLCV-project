function [I,patch, v] = ImagePartBoundingBox( img_id,part_id,width,height)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
addpath('../fetch');

I=fetchImgValue(img_id);
pos=fetchImgSPart(img_id,part_id);

xmin = pos(1) - floor(width/2);
ymin = pos(2) - floor(height/2);
v = [xmin,ymin,width,height];
patch = imcrop(I,v);
end

