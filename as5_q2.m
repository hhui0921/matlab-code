function as5_q2
clc
syms x;
a0=0.836;
a1=0.555;
a2=-0.0422;
i=1;
E=0;
n=input('Enter n :');

while(i<n+1)
    r(i)=input('Enter r :');
    y(i)=input('Enter y :');
e(i)=a0+a1*r(i)+a2*r(i)*r(i);
s(i)=(y(i)-e(i))^2;
E=E+s(i);
i=i+1;

end
fprintf(' %f\n',s)
fprintf(' %f\n',E)