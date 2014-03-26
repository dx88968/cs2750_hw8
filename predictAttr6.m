function [ p ] = predictAttr6( D,params )
K=params.K;
dataSize=size(D,1);
p=zeros(dataSize,1);
for l=1:dataSize
    picked=-1;
    prob=0;
    for k=1:K(6)
        upperSum=0;
        divide=0;
        for j=1:params.j
            p1=params.pie(1,j);
            for i=1:5
                if D(l,i)~=0
                    p1=p1*params.sigma(i,j,D(l,i));
                end
            end
            upperSum=upperSum+p1*params.sigma(6,j,k);
            divide=divide+p1;
        end
        if prob<upperSum/divide
            prob=upperSum/divide;
            picked=k;
        end
    end
    p(l,1)=picked;
end
end
