function as5_q1
clc
syms x;
a0=31.05889849;
a1=-0.78054651;
i=1;
E=0;
n=input('Enter n :');

while(i<n+1)
    r(i)=input('Enter r :');
    y(i)=input('Enter y :');
e(i)=a0+a1*r(i);
s(i)=(y(i)-e(i))^2;
E=E+s(i);
i=i+1;

end
fprintf(' %f\n',s)
fprintf(' %f\n',E)