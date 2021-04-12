function lab2_q3
clc
clear
syms m;
c = 0.25;
g = 9.81;
t = 4;
ml = input('Enter ml :');
mu = input('Enter mu :');
e =  input('Enter e in % :');
i = 1;
vt = 36;


error = 1;
fm = (sqrt((g*m)/c))*(tanh(sqrt((g*c)/m)*t))-vt;

fprintf('step\tfmL\t\t\tfmU\t\t\tfmr\t\t\tmL\t\t\tmU\t\t\tmr\t\t\tError\n');

mr = (ml + mu)/2;

fml = eval(subs(fm,m,ml));
fmu = eval(subs(fm,m,mu));
fmr = eval(subs(fm,m,mr));

while error >= (e/100)
    fprintf('%d\t\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n',i,fml,fmu,fmr,ml,mu,mr,error);
    mrr = mr;
    if fml*fmr < 0
        mu = mr;
    elseif fml*fmr >0
        ml = mr;
    end
    mr = (ml + mu)/2;
    fml = eval(subs(fm,m,ml));
    fmr = eval(subs(fm,m,mr));
    fmu = eval(subs(fm,m,mu));
    error = abs((mr-mrr)/mr);
    i = i + 1;
end
fprintf('%d\t\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n',i,fml,fmu,fmr,ml,mu,mr,error);
end