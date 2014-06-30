% Gives the classId of the image
function classId = fetchImgClass(imageId)

imageClassLabels = textread('../CUB_200_2011/CUB_200_2011/image_class_labels.txt');
for i=1:size(imageClassLabels,1)
    if(imageClassLabels(i,1) == imageId)
        classId = imageClassLabels(i,2);
        break
    end
end

end
