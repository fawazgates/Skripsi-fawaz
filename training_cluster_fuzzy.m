data=xlsread('som_dataset.csv','A2:C243'); %membaca data
x=size(data,1); %membuat variable
n=3; %ini untuk membuat cluster
%u=initfcm(n,x);
[centers,U] = fcm(data,n); %training
maxU = max(U);
index1 = find(U(1,:) == maxU);
index2 = find(U(2,:) == maxU);
plot(data(index1,1),data(index1,2),'ob')
hold on
plot(data(index2,1),data(index2,2),'or')
plot(centers(1,1),centers(1,2),'xb','MarkerSize',15,'LineWidth',3)
plot(centers(2,1),centers(2,2),'xr','MarkerSize',15,'LineWidth',3)
hold off