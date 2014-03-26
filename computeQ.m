function [ q ] = computeQ( params,expectedCounts )
q=0;
for j=1:params.j
    q=q+expectedCounts.NC(1,j)*log(params.pie(1,j));
end
for i=1:params.i
    for k=1:params.K(i)
        for j=1:params.j
            q=q+expectedCounts.NCX(i,j,k)*params.sigma(i,j,k);
        end
    end
end
end

