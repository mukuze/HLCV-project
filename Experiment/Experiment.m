arr=randi(10000,10,1);
for i=1:size(arr,1)
[I,patch,v]=ImagePartPercentage(i,13,0.05,0.05);
end