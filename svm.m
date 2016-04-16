function [Yt]=svm(X,Y,test)
model = initlssvm(X,Y,'classifier',[],[],'RBF_kernel');
model = tunelssvm(model,'simplex',...
'leaveoneoutlssvm',{'misclass'},'code_OneVsOne');
model = trainlssvm(model);
% testtest=change(test);
% Xt=testtest;
Yt=simlssvm(model,test);