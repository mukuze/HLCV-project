% 1st step = making the 'struct' of our dataset ==> e.g.
% train.class(1).bird(1).parts ==> this will give us the bird number in
% that class as well as the 15 parts with visibility of that part
% This part is just for having all of the information 

train_test_split = textread('./CUB_200_2011/CUB_200_2011/train_test_split.txt');
image_class_labels = textread('./CUB_200_2011/CUB_200_2011/image_class_labels.txt');
part_locs = textread('./CUB_200_2011/CUB_200_2011/parts/part_locs.txt');
imageDir = importdata('./CUB_200_2011/CUB_200_2011/images.txt');

birdNumber= 1;  

for i=1:size(train_test_split,1)
    if(train_test_split(i,2) == 1)
       for j=1:size(image_class_labels,1)
           if(image_class_labels(j,1) == train_test_split(i,1))
              
              for k=1:size(part_locs,1)
                  if(part_locs(k,1) == train_test_split(i,1))
                     train.class(image_class_labels(j,2)).bird(birdNumber).parts = part_locs(k:k+14,1:5); 
                     break;   
                  end
              end
              
              birdNumber = birdNumber + 1;
              if(birdNumber == 31)
                 birdNumber = 1;
              end
              
           end
       end
    end
end
