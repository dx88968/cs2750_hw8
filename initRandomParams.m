function [ params ] = initRandomParams(i,j,K)
params.K=K;
params.i=i;
params.j=j;
k=max(K);
params.sigma=zeros(i,j,k);
for x=1:i
    for y=1:j
        params.sigma(x,y,:)=randProbSeq(K(1,x),k);
    end
end
params.pie=randProbSeq(j);
end

