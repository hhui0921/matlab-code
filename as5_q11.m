function as5_q11
clc
syms x;
yyy=159/11;
i=1;
E=0;
n=input('Enter n :');


while(i<n+1)
    y(i)=input('Enter y :');
  
e(i)=(y(i)-yyy)^2;

E=E+e(i);
i=i+1;

end
fprintf(' %f\n',e)
fprintf(' %f\n',E)