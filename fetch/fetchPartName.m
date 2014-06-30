function partName = fetchPartName(partId)

partsFile = importdata('../CUB_200_2011/CUB_200_2011/parts/parts.txt');

a = partsFile{partId};
f = strfind(a,' ');
partName = a((f+1):end);

end
