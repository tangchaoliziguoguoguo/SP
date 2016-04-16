function A=change(A)
for i=3:12
    A(:,i)=log10(A(:,i));
end
