function T=extract_enf(after)
%data����������������ԭʼ��Ƶ�͹��ʣ������˲����ԭʼ����
%T(1)-ENF-��ֵ
%T(2):ENF�ź�log(var)��
%T(3):ENF�ź�log(range)
%T(4):log(a9) 
%T(5)-T(13):log(var) of  d9 to d1
%T(14,15) AR����Ԥ��ϵ��
%T(16) ARԤ����С������
%lpc���صĵ�һ��ֵ��Զ��1,����
after=zhouenf(after);
after=after(1:length(after)-1);
T=zeros(1,16);
T(1)=mean(after);
T(2)=log(var(after));
T(3)=log(range(after));
[C,L]=wavedec(after,9,'db1');
T(4)=log(var(appcoef(C,L,'db1',9)));
for i=5:13
    T(i)=log(var(detcoef(C,L,14-i)));
end
[ar,e]=lpc(after,2);
T(14)=ar(2);
T(15)=ar(3);
T(16)=log10(e);  




