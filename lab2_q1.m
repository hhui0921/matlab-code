function lab2_q1
clc
syms x;
g=9.81;
c=0.25;
t=4;
i=1;
m=input('Enter m :');
dm=input('Enter dm :');
mm=input('Enter mm :');
vt=input('Enter vt :');
while(m<=mm)

v(i)=(sqrt(g*m/c))*tanh((sqrt(g*c/m))*t)-vt;
M(i)=m;
m=m+dm; 
i=i+1;

end
fprintf(' %f\n',v)
plot(M,v);

grid;