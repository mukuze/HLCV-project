arr=randi(10000,10,1);
for i=1:size(arr,1)
[I,patch,v]=ImagePartPercentage(arr(i),14,0.32,0.12);

figure
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(patch);
end