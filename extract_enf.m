function T=extract_enf(after)
%data是行向量，而且是原始音频和功率，或者滤波后的原始数据
%T(1)-ENF-均值
%T(2):ENF信号log(var)，
%T(3):ENF信号log(range)
%T(4):log(a9) 
%T(5)-T(13):log(var) of  d9 to d1
%T(14,15) AR线性预测系数
%T(16) AR预测最小均方差
%lpc返回的第一个值永远是1,舍弃
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




