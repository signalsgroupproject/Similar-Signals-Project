function [amplitude] = amplitude(input_audio)
%NORMA Summary of this function goes here
%   Detailed explanation goes here
negatives = input_audio < 0;
amplitude = mean(input_audio(~negatives));
end
