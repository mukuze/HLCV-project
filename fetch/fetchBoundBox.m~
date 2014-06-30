%Gives the position of Bounding box with in the image
function boundingBox = fetchBoundBox(imageId)

Box = textread('../CUB_200_2011/CUB_200_2011/bounding_boxes.txt');

for i=1:size(Box,1)
    if(imageId == Box(i,1))
        boundingBox = Box(i,2:5);
        break;
    end
end

end
