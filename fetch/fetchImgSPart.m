function position = fetchImgSPart(imgId, partId)

positionS = fetchImgPart(imgId);
position = positionS(partId, 2:3);

end