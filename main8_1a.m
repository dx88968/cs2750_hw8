D=load('customer_train.txt');
threhold=0.001;
p=initRandomParams(6,4,[5 3 3 4 5 4]);
delta=inf;
prev=inf;
while delta>threhold
    [p,ec]=EM(D,p);
    q=computeQ(p,ec);
    delta=abs(q-prev);
    prev=q;
end
DT=load('customer_test.txt');
a6=predictAttr6(DT,p);
compute_error(DT(:,6),a6);