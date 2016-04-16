load('energydata.mat');
load('practicenergycut.mat');
A=[A_P1;A_P2;A_P3;A_P4;A_P5;A_P6;A_P7;A_P8;A_P9];
C=[C_P1;C_P2;C_P3;C_P4;C_P5;C_P6;C_P7;C_P8;C_P9;C_P10;C_P11];

X=[A;C];
% test1=X(5,:);
% test2=X(14,:);
% X=[X(1:4,:);X(6:14,:);X(16:20,:)];
% Y=zeros(18,1);
% Y(1:9)=1
Y=zeros(20,1);
Y(10:20)=2;
test=[practice_1_1;practice_3_1;practice_11_1;practice_15_1...
    ;practice_17_1;practice_19_1;practice_44_1];
for i=2:10
    eval(['test=[test;practice_1_',num2str(i),';practice_3_',num2str(i),...
    ';practice_11_',num2str(i),...
    ';practice_15_',num2str(i),';practice_17_',num2str(i),...
    ';practice_19_',num2str(i),';practice_44_',num2str(i),']']);
end
% test=[test1;test2];
yt=svm(X,Y,test);
yt'
%1--A 0--C