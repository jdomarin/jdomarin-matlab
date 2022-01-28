function[M1]=moyenneex1(x)
M1 = 0;
N = length(x);
for k=1:N
   M1 = M1 + x(k);
end
M1 = M1 / N; disp(['M1=' num2str(M1)]);
M2 = mean(x); disp(['M2=' num2str(M2)]);
M3 = sum(x)/length(x); disp(['M3=' num2str(M3)]);