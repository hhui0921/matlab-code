function lab2_q5
clc
clear
syms m;
c = 0.25;
g = 9.81;
t = 4;
mi = input('Enter guess m :');

e =  input('Enter e in % :');
i = 1;
vt = 36;


error = 1;
fm = (sqrt((g*m)/c))*(tanh(sqrt((g*c)/m)*t))-vt;
fmd=diff(fm);
fprintf('iteration\txi\t\t\t\t\tError\n');
fprintf('%d\t\t\t%f\t\t\t%f\n',i,mi,error);

while error >= (e/100)
    ffm = eval(subs(fm,m,mi));
    ffmd = eval(subs(fmd,m,mi));
    mii=mi;
    mi=mi-(ffm/ffmd);
    error = abs((mi-mii)/mi);
    i = i + 1;
    fprintf('%d\t\t\t%.10f\t\t%.10f\n',i,mi,error);
end

end