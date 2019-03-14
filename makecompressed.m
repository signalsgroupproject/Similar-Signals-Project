% make compressed versions of s1 and s2 in ogg of varying quality

clear sound; clearvars; %close all;
Fs = 44100;
[s1,~] = audioread('./Target_Data/SampleOne.wav');
[s2,~] = audioread('./Target_Data/SampleTwo.wav'); 
% [s3,~] = audioread('./Target Data/SampleThree.wav'); 
% [s4,~] = audioread('./Target Data/SampleFour.wav'); 
% [s5,~] = audioread('./Target Data/SampleFive.wav'); 

% audiowrite('./Target_Data/SampleOne.ogg',s1,Fs,'Quality',0)
% audiowrite('./Target_Data/SampleTwo.ogg',s2,Fs,'Quality',0)

audiowrite('./Target_Data/SampleOne.mp4',s1,Fs)
audiowrite('./Target_Data/SampleTwo.mp4',s2,Fs)