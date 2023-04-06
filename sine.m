% Matlab code to create a sinusoidal signal x(t)= 20sin(2pi80t)
 
clc;
fm=80;
t=0:0.001:2/fm;
y= 20*sin(2*pi*fm*t);
subplot(2,1,1);
plot(t,y);
title('Original sinusoidal signal x(t)');
xlabel('time (in s):');
ylabel('Magnitude:');
 
z = fft(y);
z1=abs(z);
subplot(2,1,2);
plot(t,z1);
title('Absolute value of the fourier transform of the sinusoidal signal');
xlabel('frequency (in Hz):');
ylabel('Absolute value:');
