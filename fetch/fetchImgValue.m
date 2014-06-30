function imgValue = fetchImgValue(imgId)

imgPath = fetchImgPath(imgId);
imgValue = imread(imgPath);

end