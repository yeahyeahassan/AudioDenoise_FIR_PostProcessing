# 🎵 Audio Denoising using FIR Filtering and Post-Processing 🎛️

## Introduction 📜
This project focuses on the application of FIR (Finite Impulse Response) filtering for audio denoising, followed by post-processing techniques. The primary objective is to improve the signal-to-noise ratio (SNR) and reduce mean square error (MSE) in the audio signal.

## Objectives 🎯
1. **Design a FIR Filter**: Develop a finite impulse response filter based on specified parameters, including filter order, stopband attenuation, and transition bandwidth.
2. **Frequency Response Analysis**: Visualize and analyze the frequency response, magnitude, and phase of the designed FIR filter.
3. **Denoising Process**: Apply the designed FIR filter to the noisy audio signal for denoising.
4. **Signal Comparison**: Compare the original, noisy, and denoised audio signals through time-domain plots.
5. **Performance Evaluation**: Assess the denoising performance using metrics such as SNR and MSE.
6. **Post-Processing**: Implement post-processing techniques, such as a median filter, to further enhance the denoised audio.

## Procedure 🛠️
1. **Read Noisy Audio**: Read the provided noisy audio file to determine the sampling frequency (Fs).
2. **Filter Design**: Design an FIR filter based on the given specifications, considering parameters like filter order, stopband attenuation, and transition bandwidth.
3. **Frequency Response Analysis**: Visualize and analyze the frequency response, magnitude, and phase of the designed FIR filter.
4. **Apply Filter**: Implement the FIR filter on the noisy audio signal to obtain a denoised audio output.
5. **Signal Visualization**: Plot the original, noisy, and denoised audio signals for visual comparison.
6. **Performance Evaluation**: Evaluate denoising performance using metrics like SNR and MSE, comparing the denoised audio with the noise-free original.
7. **Post-Processing**: Apply post-processing techniques, such as a median filter, to further enhance the denoised audio.
8. **Audio Playback and Saving**: Play and save the denoised and post-processed audio signals.


## Real-Life Application 🌍
Audio denoising has broad applications in real-life scenarios, including:

1. **Telecommunications**: Enhancing voice signals in telecommunication systems.
2. **Audio Recording**: Improving the quality of recorded audio in studios or field recordings.
3. **Speech Recognition**: Improving the accuracy of speech recognition systems by reducing background noise.
4. **Audio Restoration**: Preserving and restoring historical or degraded audio recordings.

## Conclusion 🏁
The project demonstrates the effectiveness of FIR filtering in reducing noise from audio signals. The analysis of performance metrics and the application of post-processing techniques contribute to a comprehensive approach for audio enhancement. The project highlights the significance of DSP in improving the quality of audio signals, making them more suitable for various applications.
