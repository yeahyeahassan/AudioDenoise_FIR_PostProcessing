clc; clear all;
% Student ID: 2021825
% Read the noisy audio file to obtain sampling frequency (Fs)
[noisy_audio, Fs] = audioread('mixkit.wav');
% Define specifications based on student ID
N = 13;         % Maximum order
As = 15;        % Minimum stopband attenuation in dB
delta_w = 13;   % Maximum transition bandwidth in Hz
% Design the filter
filter_order = min(N, 100);  % You can adjust the upper limit as needed
filter_coeffs = fir1(filter_order, delta_w / (Fs/2));
% Visualize the frequency response, magnitude, and phase
figure;
subplot(2, 1, 1);
freqz(filter_coeffs, 1, 1024, Fs);
title('Frequency Response of the Designed Filter');
subplot(2, 1, 2);
[h, f] = freqz(filter_coeffs, 1, 1024, Fs);
plot(f, 20*log10(abs(h)));
title('Magnitude Response of the Designed Filter');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
% Apply the designed filter
denoised_audio = filter(filter_coeffs, 1, noisy_audio);
% Plot original, corrupted, and denoised signals
figure;
subplot(3, 1, 1);
plot((0:length(noisy_audio)-1)/Fs, noisy_audio);
title('Original Audio');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(3, 1, 2);
plot((0:length(noisy_audio)-1)/Fs, noisy_audio);
title('Noisy Audio');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(3, 1, 3);
plot((0:length(denoised_audio)-1)/Fs, denoised_audio);
title('Denoised Audio');
xlabel('Time (s)');
ylabel('Amplitude');
% Play the original and denoised audio
sound(noisy_audio, Fs);
pause;
sound(denoised_audio, Fs); 
% Save the denoised audio
audiowrite('denoised_audio.wav', denoised_audio, Fs);
% Read the noise-free audio for comparison
[noise_free_audio, ~] = audioread('expected.m4a');
% Evaluate performance (e.g., signal-to-noise ratio, mean square error)
snr_value = snr(noise_free_audio, denoised_audio);
mse_value = mse(noise_free_audio, denoised_audio);
fprintf('SNR: %.2f dB\n', snr_value);
fprintf('MSE: %.4f\n', mse_value);
% Apply post-processing (e.g., median filter)
denoised_audio_post = medfilt1(denoised_audio, 5);
% Play the post-processed audio
sound(denoised_audio_post, Fs);
% Save the post-processed audio
audiowrite('denoised_audio_post.wav', denoised_audio_post, Fs);
