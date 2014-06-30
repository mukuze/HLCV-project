function visible = fetchImgPartVis(imgId, imgPart)

partLocs = textread('../CUB_200_2011/CUB_200_2011/parts/part_locs.txt');

for i=1:size(partLocs,1)
    if(imgId == partLocs(i,1))
        imgParts = partLocs(i:i+14,2:5);
        break;
    end
end

visible = imgParts(imgPart,4);


end
