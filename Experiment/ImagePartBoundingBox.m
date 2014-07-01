function [I,patch, v] = ImagePartBoundingBox( img_id,part_id,width,height)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
addpath('../fetch');

I=fetchImgValue(img_id);
pos=fetchImgSPart(img_id,part_id);

v=[pos(1),pos(2),width,height];

patch=imcrop(I,[v(1)+(v(3)/2)-20-1,v(2)+(v(4)/2)-20-1,80,80]);

figure
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(patch);
end

