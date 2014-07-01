
fid = fopen('parts_best_percentages.txt');
Parts_Percentage=[];
while 1
    tline=fgetl(fid);
    if ~ischar(tline)
        break;
    end
    Parts=str2num(tline);
    Parts_Percentage=[Parts_Percentage; Parts(2:3)];
end
tuned_percentage = Parts_Percentage;
save tuned_percentage;
