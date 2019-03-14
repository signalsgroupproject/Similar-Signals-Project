% close all, clear vars
Fs = 44000;
deci = 3;
resolution = round(Fs/6/deci);
length = 10;
shift = 3;
time_start = 88;
time_end = time_start+length; % select start time and end time in seconds
samples = [time_start*Fs,time_end*Fs]; % convert seconds to samples
[s1,~] = audioread('./Target_Data/SampleOne.wav',  samples); s1 = s1(:,1);
[s2,~] = audioread('./Target_Data/SampleTwo.wav',  samples); s2 = s2(:,1);
[s3,~] = audioread('./Target_Data/SampleThree.wav',samples); s3 = s3(:,1);
[s4,~] = audioread('./Target_Data/SampleFour.wav', samples); s4 = s4(:,1);
[s5,~] = audioread('./Target_Data/SampleFive.wav', samples); s5 = s5(:,1);

[c1,~] = audioread('./Target_Data/SampleOne.ogg',  samples); c1 = c1(:,1);
[c2,~] = audioread('./Target_Data/SampleTwo.ogg',  samples); c2 = c2(:,1);

time_start = time_start+shift; time_end = time_start+length; % select start time and end time in seconds
samples = [time_start*Fs,time_end*Fs]; % convert seconds to samples
[ss1,~] = audioread('./Target_Data/SampleOne.wav',  samples); ss1 = ss1(:,1);
[ss2,~] = audioread('./Target_Data/SampleTwo.wav',  samples); ss2 = ss2(:,1);
[ss3,~] = audioread('./Target_Data/SampleThree.wav',samples); ss3 = ss3(:,1);
[ss4,~] = audioread('./Target_Data/SampleFour.wav', samples); ss4 = ss4(:,1);
[ss5,~] = audioread('./Target_Data/SampleFive.wav', samples); ss5 = ss5(:,1);

s1 = decimate(s1,deci);
c1 = decimate(c1,deci);
Fs = Fs / deci;

figure(1);
subplot(1,2,1);
spectrogram(s1,resolution,'yaxis');
spec1 = spectrogram(s1,resolution,'yaxis');
% imagesc(abs((((spec1)))));

subplot(1,2,2);
spectrogram(c1,resolution,'yaxis');
spec2 = spectrogram(c1,resolution,'yaxis');
% imagesc(abs((((spec1)))));

figure(2);
subplot(1,2,1);
imagesc(abs(((fft2(spec1)))));

subplot(1,2,2);
imagesc(abs(((fft2(spec2)))));

sound(simple_difference(s1,c1),Fs)