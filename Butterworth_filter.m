MATLAB code for Butterworth filter: 
[y, fs]=wavread('originalspeech.wav');
sound(y,fs);% Hear the sound in your speakers
time=(1:length(y))/fs;
figure(1);
subplot(2,2,1),plot(time,y);
%% 
z=0.05*randn(size(y),1); 
d=z+y;
subplot(2,2,2),plot(time,d);
sound(d,fs); 
%%
% Add noise
b = randi(length(y), length(y)*0.01, 1);
a = 10*randn(size(b), 1);
c = y; 
c(b) = single(y(b))+a;
time=(1:length(y))/fs;
subplot(2, 2, 3),plot(time, c);
sound(c, fs);
[L,M]  = butter(2,0.1,'low');
filt=filter(L,M,d);
sound(filt, fs);
subplot(2, 2, 4),plot(time,filt);


