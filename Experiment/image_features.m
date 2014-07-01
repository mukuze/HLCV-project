function features = image_features( img_id ,bins_each_bodypart,tuned_percentage )
%image_features extracts rg_features for given image
%   Extracts rg_features for an image with img_id and gives back the feature vector. features output is
%   (num_of_bodypats)*(bins_each_bodypart) column vector.
num_of_bodyparts = 5;
addpath('../fetch');
addpath('../featureExtractor');
features = [];
% features = zeros(num_of_bodyparts*bins_each_bodypart, 1);
for bodypart=1:num_of_bodyparts
%     [~,patch,~]=ImagePartPercentage(img_id,bodypart,tuned_percentage(bodypart,:));
    patch = fetchImgValue(img_id);
    feature = rg_hist(double(patch),bins_each_bodypart);
    features = [features ; feature];
end
end

