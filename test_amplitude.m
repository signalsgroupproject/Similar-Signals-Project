close all, clear vars
load('targetdata.mat')

s1_amplitude = amplitude(s1)
s4_amplitude = amplitude(s4)

subplot(1,2,1);
diff41 = simple_difference(s4, s1);
spectrogram(diff41,round(44000/6),'yaxis');

s4s1_scale = s4_amplitude / s1_amplitude

new_s1 = s1 .* (s4s1_scale);
diff4n1 = simple_difference(s4, new_s1);
sound(diff4n1,Fs)
subplot(1,2,2);
spectrogram(diff4n1,round(44000/6),'yaxis');
