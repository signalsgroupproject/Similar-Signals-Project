% makes a .mat file of the sample data from a selected sample range of each
% file
clear sound; clearvars; %close all;
Fs = 44100;
time_start = 54; time_end = 60; % select start time and end time in seconds
samples = [time_start*Fs,time_end*Fs]; % convert seconds to samples
[s1,~] = audioread('./Target Data/SampleOne.wav',samples); s1 = s1(:,1);
[s2,~] = audioread('./Target Data/SampleTwo.wav',samples); s2 = s2(:,1);
[s3,~] = audioread('./Target Data/SampleThree.wav',samples); s3 = s3(:,1);
[s4,~] = audioread('./Target Data/SampleFour.wav',samples); s4 = s4(:,1);
[s5,~] = audioread('./Target Data/SampleFive.wav',samples); s5 = s5(:,1);