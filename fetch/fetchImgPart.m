function imgParts = fetchImgPart(imgId)

partLocs = textread('../CUB_200_2011/CUB_200_2011/parts/part_locs.txt');

for i=1:size(partLocs,1)
    if(imgId == partLocs(i,1))
        imgParts = partLocs(i:i+14,2:4);
        break;
    end
end

end
