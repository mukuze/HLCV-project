%Gives the id of the class as well as it is train image(1)
%or test image(0) and the path of the image, after calling this function
%we could easily show the image by typing: imshow(pathOfImage)
function pathOfImage = fetchImgPath(imageId)

imageDir = importdata('../CUB_200_2011/CUB_200_2011/images.txt');

for i=1:size(imageDir,1)
    a = sscanf(imageDir{i},'%f');
    if (a(1) == imageId)
       s = imageDir{a(1)};
       f = strfind(s,' ');
       path=strcat('../images/',s((f+1):end));
       pathOfImage = path;
       break;
    end
end

end
