function [ error ] = compute_error( y1,y2 )
error=0;
for i=1:length(y1)
    if y1(i,1)~=y2(i,1)
        error=error+1;
    end
end
cm=confusionmat(y1,y2);
%fprintf('confusion matrix is:\n %f %f \n %f %f\n',cm);
error=error/length(y1);
fprintf('error is:%f\n',error);
end

