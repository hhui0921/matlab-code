function lab2_q6
clc
clear
syms m;
c = 0.25;
g = 9.81;
t = 4;
mm1 = input('Enter guess m-1 :');
m0 = input('Enter guess m0 :');
e =  input('Enter e in % :');
i=3;
k = 1;
vt = 36;
error = 1;
fm = (sqrt((g.*m)./c)).*(tanh(sqrt((g.*c)./m).*t))-vt;
x(1)=mm1;
x(2)=m0;
ffm(1) = eval(subs(fm,m,x(1)));
ffm(2) = eval(subs(fm,m,x(2)));
fprintf('iteration\txi\t\t\t\t\tError\n');
fprintf('%d\t\t%.10f\t\t%.10f\n',-1,x(1),0);
fprintf('%d\t\t%.10f\t\t%.10f\n',0,x(2),abs((x(2)-x(1))/x(2)));
while error >= (e/100)
   
    x(i)= x(i-1)-((ffm(i-1)).*(x(i-2)-x(i-1)))./(( ffm(i-2))-ffm(i-1));
    ffm(i) = eval(subs(fm,m,x(i)));

    error = abs((x(i)-x(i-1))/x(i));
    k = k + 1;
    fprintf('%d\t\t%.10f\t\t%.10f\n',k,x(i),error);
    i=i+1;
end

end