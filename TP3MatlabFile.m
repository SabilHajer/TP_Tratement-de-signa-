clear all 
close all 
clc 

%%
%Question 1:

load("ecg.mat");% la focnction load  charge le fichier ECG 
fe = 500 ;
te = 1/fe;
N = length(ecg)
t = (0:N-1)*te;
f = (0:N-1)*(fe/N);
fshift = (-N/2:N/2-1)*(fe/N);


%% "Suppression du bruit provoqué par les mouvements du corps"


% Plotting le signal ECG  
%Question 2
plot(t,ecg)
xlabel("Time (s)")
ylabel("Amplitude")
%xlim([0.5 1.5])
title("Original ECG signal")

%Question 3 : 
transF = fft(ecg) ;
% le spectre d'aplitude du signal 
plot(fshift, 2*fftshift(abs(transF)/N));
xlabel("frequence(Hz)")
ylabel("Amplitude")
title("Spectre d'amplitude se ECG ")

%question 4 :
%generation d'un fltre pass_haut 
pass_haut = ones(size(ecg));
fc = 0.5;
index_fc = ceil((fc*N)/fe);
pass_haut(1:index_fc) = 0;
pass_haut(N-index_fc+1:N)=0;
% filtrage  
filtrage = pass_haut.*transF; % le filtre est le prosuit de TFD du signal par le filtre 
ecg1 = ifft(filtrage,"symmetric");% le transformer de Fourier inverse pour retourner au domaine temporelle 
% apres le filtre pass_haut
plot(t,ecg1)
xlabel("Time (s)")
ylabel("Amplitude")
title("Le signal filtre ecg1")


%% "Suppression des interférences des lignes électriques 50Hz" 

%Question 6 : 
% generation d'u fitre Notch ideal
Notch_ideal = ones(size(ecg1));
fc_bande = 50 ; 
index_fc = ceil((fc_bande*N)/fe)+1;
Notch_ideal(index_fc) = 0 ;
Notch_ideal(N-index_fc+1) = 0 ;
% calcule de TFD 
tranFecg1 = fft(ecg1) ;
% le spectre d'aplitude du signal 
plot(fshift, 2*fftshift(abs(tranFecg1)/N));
xlabel("frequence(Hz)")
ylabel("Amplitude")
title("Spectre d'amplitude se ECG1 ")
% application du filtre 
filter = Notch_ideal.*tranFecg1 ;
ecg2 = ifft(filter,"symmetric") ;
% apres le filtre ideal Notch 
plot(t,ecg2)
xlabel("Time (s)")
ylabel("Amplitude")
title("Le signal filtre ecg1")



%% "Amélioration du rapport signal sur bruit"

% calcule de TFD du ecg 2
tranFecg2 = fft(ecg2) ;
% le spectre d'amplitude de ecg2 
fshiftecg2 = fftshift(abs(2*tranFecg2/N));
plot(fshift,fshiftecg2)
xlabel("Time (s)")
ylabel("Amplitude")
title("Le signal filtre ecg2")

% Conception du filtre 
%Question 7 : 
pass_bas = zeros(size(ecg));
fc3 = 37 ; % la frequence de coupure 
index_fc3 = ceil((fc3*N)/fe);
pass_bas(1:index_fc3) = 1;
pass_bas(N-index_fc3+1:N)=1;


% applcation du filtre 
filter_bas = pass_bas.*tranFecg2 ;
% TFI 
ecg3 = ifft(filter_bas,"symmetric") ;
plot(t,ecg3)
xlabel("Time (s)")
ylabel("Amplitude")
title("Le signal filtre ecg3")
%Question 8 : 
subplot(211)
plot(t,ecg)

ylabel("Amplitude")
title("Le signal d'origine ecg")

subplot(212)
plot(t,ecg-ecg3) 
xlabel("Time (s)")
ylabel("Amplitude")
title(" la bande elimine")

%% /*"Identification de la fréquence cardiaque avec la fonction d’autocorrélation "*/

%Question 9 : 
[acf,lags] = xcorr(ecg3,ecg3);
stem(lags/fe,acf)
% Trouver le décalage correspondant à la fréquence cardiaque

%Question 10 : 
[maxval, maxidx] = max(acf);
local_maxima = find(acf(maxidx:end) < maxval, 1) + maxidx -1  ;

heart_rate = (fe / lags(local_maxima))/10;

