clear all
close all
clc


%% **********************Filtrage Analogique********************  %


%Definition des variables et de signal 
te = 1e-4 ;
fe = 1/te ;
t = 0:te:5-te ;
N = length(t);
f = (0:N-1)*(fe/N);
fshift = (-N/2:N/2-1)*fe/N;
%Definition de la fonction xt 
xt = sin(2*pi*500*t)+ sin(2*pi*400*t)+ sin(2*pi* 50*t) ;

% plot du signal 
plot(t,xt)
xlabel("Temps (s)")
ylabel("Amplitude")
title("le signal x(t)")
% calcule de TFD 
tansf = fft(xt);
% le spectre d'amplitude de signal 
plot(fshift,fftshift(abs(tansf)/N)*2)
xlabel("frequence(Hz)")
ylabel("Amplitude")
title("Spectre d'amplitude x(t) ")


% la fonction de transmmitance 

K = 1 ;
fc1 = 150 ;
fc2 = 170 ;
fc3 = 10;

% definition de fonction de transmittance 
H1 = (K*1j*f/fc1)./(1+1j*f/fc1) ;
H2 = (K*1j*f/fc2)./(1+1j*f/fc2) ;
H3 = (K*1j*f/fc3)./(1+1j*f/fc3) ;

% plot de module de la FT 
plot(f,abs(H1))
plot(fshift,fftshift(abs(tansf)/N)*2)
xlabel("frequence(Hz)")
ylabel("Amplitude")
title("Spectre d'amplitude H1 ")

% Calcule de gain de chaque fonction 
G1 = 20*log(abs(H1));
G2 = 20*log(abs(H2));
G3 = 20*log(abs(H3));

%  Calcule de phase  de chaque fonction 
phi1 = angle(H1);
phi2 = angle(H2);
phi3 = angle(H3);

hold on


subplot(2,1,1) 
semilogx(f,G1,'g',f,G2,'r',f,G3,'b')
ylabel('Gain (dB)')
title('Bode Diagram')
grid on 
subplot(2,1,2) 
semilogx(f,phi1, 'g',f,phi2,'r',f,phi3,'b')
ylabel('Phase (deg)')
xlabel('Frequency (rad/s)')
grid on 



% applicaton de filtre 
yt1 = tansf.*H1 ;
yt2 = tansf.*H2 ;
yt3 = tansf.*H3 ;
Yt1 = ifft(yt1,'symmetric');
Yt2 = ifft(yt2,'symmetric');
Yt3 = ifft(yt3,'symmetric');
plot(t, Yt1)
plot(t, Yt2)
plot(t, Yt3)
plot(t,xt)
plot(t , xt-Yt1)
plot(t , xt-Yt2)
plot(t , xt-Yt3)

plot(fshift,fftshift(abs(fft(Yt1))/N)*2)
plot(fshift,fftshift(abs(fft(Yt2))/N)*2)
plot(fshift,fftshift(abs(fft(Yt3))/N)*2)

%%  Dé-bruitage d'un signal sonore

% telechargement de signal 
[music, fs] = audioread('test.wav');

% convertir le signal en un signal colone 
 music = music';
% Definition des variables 
 N=length(music);
 te = 1/fs;
 t = (0:N-1)*te;
 f = (0:N-1)*(fs/N);
 fshift = (-N/2:N/2-1)*(fs/N);

% calcule de TFD 
 y_trans = fft(music);

% plot de spectre d'amplitude 
 plot(fshift,fftshift(abs(y_trans)))
 xlabel("frequence(Hz)")
 ylabel("Amplitude")
 title("Spectre d'amplitude se music ")



k = 1;
fc = 5000;

%la transmitance complexe 

h =k./(1+1j*(f/fc).^1000);
h_filter = [h(1:floor(N/2)), flip(h(1:floor(N/2)))];
semilogx(f(1:floor(N/2)),abs( h(1:floor(N/2))),'linewidth',1.5)

%diagramme de bode 

Gain = 20*log10(abs(h));
semilogx(f,Gain)
ylabel('Gain (dB)')
xlabel('Frequency (rad/s)')
grid on 

% application de filtre 
y_filtr = y_trans(1:end-1).*h_filter;

% visualisation de signal de sortie 

sig_filtred= ifft(y_filtr,"symmetric");
plot(fshift(1:end-1),fftshift(abs(fft(sig_filtred))))