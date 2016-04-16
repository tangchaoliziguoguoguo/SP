function svm(A,B,C,n1,n2,m1,m2,m3)
X=[A(3:m1,n1) A(3:m1,n2);B(3:m2,n1) B(3:m2,n2);C(3:m2,n1) C(3:m2,n2)];
Y=[zeros(m1-2,1);ones(m2-2,1);2*ones(m3-2,1)];
model = initlssvm(X,Y,'classifier',[],[],'RBF_kernel');
model = tunelssvm(model,'simplex',...
	'leaveoneoutlssvm',{'misclass'},'code_OneVsOne');
model = trainlssvm(model);
plotlssvm(model);