%First Run the makeCell.m file then try this function
%e.g. showimage(100,10,1,imageDir,train)

function showimage(ClassID, BirdID, partID, imageDir, train)
for i=1:size(imageDir,1)
    a = sscanf(imageDir{i},'%f');
    if(a(1) == train.class(ClassID).bird(BirdID).parts(1,1))
       s = imageDir{a(1)};
       f = strfind(s,' ');
       s=strcat('./CUB_200_2011/CUB_200_2011/images/',s((f+1):end));
       imshow(s); 
       break;
       %hold on;            
       %plot(y_p,x_p,'o'); 
       %hold off; 
    end
end
