% put this function in the 'fetch' folder (you should make this folder)
% and put this folder inside 'CUB_200_2011' folder

% Gives the train or test images of the class

function idx_vector = fetchClass(classID , train_test)

if(classID > 200)
    disp('There is not such a classID!');
end

trainTestSplit = textread('../CUB_200_2011/CUB_200_2011/train_test_split.txt');
imageClassLabels = textread('../CUB_200_2011/CUB_200_2011/image_class_labels.txt');

idx_vector = [];
for i=1:size(imageClassLabels,1)
    if(imageClassLabels(i,2) == classID)
       for j=1:size(trainTestSplit,1)
           if(imageClassLabels(i,1) == trainTestSplit(j,1) && trainTestSplit(j,2) == train_test)
               idx_vector = [idx_vector,trainTestSplit(j,1)];
           end
       end
    end
end

idx_vector = idx_vector';

end
