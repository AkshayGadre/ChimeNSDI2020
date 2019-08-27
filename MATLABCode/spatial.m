MASTER=zeros(49,1);
MASTER1=[];
MASTER2=[];
MASTER3=[];

for i=1:40
[~,x1]=max(x(i,:));
[~,x2]=max(x(i+1,:));
[~,x3]=max(x(i+2,:));
[~,x4]=max(x(i+3,:));
[~,x5]=max(x(i+4,:));
[~,x6]=max(x(i+5,:));
[~,x7]=max(x(i+6,:));
[~,x8]=max(x(i+7,:));
p=polyfit([1:3],[x1 x2 x3],2);
q=mod(round(polyval(p,4)),160)+1;
MASTER1=[MASTER1 polyval(Z,x(i+3,q)-median(x(i+3,:)))/polyval(Z,max(x(i+3,:))-median(x(i+3,:)))];
p=polyfit([1:5],[x1 x2 x3 x4 x5],3);
q=mod(round(polyval(p,6)),160)+1;
MASTER2=[MASTER2 polyval(Z,x(i+5,q)-median(x(i+5,:)))/polyval(Z,max(x(i+5,:))-median(x(i+5,:)))];
p=polyfit([1:7],[x1 x2 x3 x4 x5 x6 x7],3);
q=mod(round(polyval(p,8)),160)+1;
MASTER3=[MASTER3 polyval(Z,x(i+7,q)-median(x(i+7,:)))/polyval(Z,max(x(i+7,:))-median(x(i+7,:)))];
end