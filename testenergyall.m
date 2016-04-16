% load('energydata.mat');
% load('practicenergycut.mat');

load('practice16enf.mat');
load('enf16data.mat');
A=[A_P1;A_P2;A_P3;A_P4;A_P5;A_P6;A_P7;A_P8;A_P9];
B=[B_P1;B_P2;B_P3;B_P4;B_P5;B_P6;B_P7;B_P8;B_P9;B_P10];
C=[C_P1;C_P2;C_P3;C_P4;C_P5;C_P6;C_P7;C_P8;C_P9;C_P10;C_P11];
D=[D_P1;D_P2;D_P3;D_P4;D_P5;D_P6;D_P7;D_P8;D_P9;D_P10;D_P11];
E=[E_P1;E_P2;E_P3;E_P4;E_P5;E_P6;E_P7;E_P8;E_P9;E_P10;E_P11];
F=[F_P1;F_P2;F_P3;F_P4;F_P5;F_P6;F_P7;F_P8];
G=[G_P1;G_P2;G_P3;G_P4;G_P5;G_P6;G_P7;G_P8;G_P9;G_P10;G_P11];
H=[H_P1;H_P2;H_P3;H_P4;H_P5;H_P6;H_P7;H_P8;H_P9;H_P10;H_P11];
I=[I_P1;I_P2;I_P3;I_P4;I_P5;I_P6;I_P7;I_P8;I_P9];

X=[A;B;C;D;E;F;G;H;I];
% test1=X(5,:);
% test2=X(14,:);
% X=[X(1:4,:);X(6:14,:);X(16:20,:)];
% Y=zeros(18,1);
% Y(1:9)=1
Y=zeros(91,1);
Y(10:19)=1;
Y(20:30)=2;
Y(31:41)=3;
Y(42:52)=4;
Y(53:60)=5;
Y(61:71)=6;
Y(72:82)=7;
Y(83:91)=8;
% test=[practice_1_1;practice_3_1;practice_11_1;practice_15_1...
%     ;practice_17_1;practice_19_1;practice_44_1];
% for i=2:10
%     eval(['test=[test;practice_1_',num2str(i),';practice_3_',num2str(i),...
%     ';practice_11_',num2str(i),...
%     ';practice_15_',num2str(i),';practice_17_',num2str(i),...
%     ';practice_19_',num2str(i),';practice_44_',num2str(i),']']);
% end
% test=[test1;test2];
test=[practice_1];
for i=2:50
eval(['test=[test;practice_',num2str(i),'];']);
end
yt=svm(X,Y,test);
yt'