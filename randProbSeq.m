function [ seq ] = randProbSeq( size,extendedsize )
randbase=rand(1,size);
seq=randbase/sum(randbase);
if nargin>=2
    seq=[seq -ones(1,extendedsize-size)];
end
end

