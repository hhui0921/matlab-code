function lab2_q7
clc
clear
syms m;
c = 0.25;
g = 9.81;
t = 4;
mi = input('Enter guess m :');
ss = input('Enter  s :');
e =  input('Enter e in % :');
i = 1;
vt = 36;


error = 1;
fm = (sqrt((g*m)/c))*(tanh(sqrt((g*c)/m)*t))-vt;

fprintf('iteration\txi\t\t\t\t\tError\n');


while error >= (e/100)
    ffm = eval(subs(fm,m,mi));
    ms=mi+ss*mi;
    ffms= eval(subs(fm,m,ms));
    mii=mi;
    mi=mi-ss*mi*ffm/(ffms-ffm);
    error = abs((mi-mii)/mi);
    fprintf('%d\t\t%.10f\t\t%.10f\n',i,mi,error);
    i = i + 1;
end

end