clear all
close all
clc
%% Jeux de mots

%Question 1:
[x,fe]=audioread("phrase.mp3");

%Question 2:
% traçage du signal
plot(x)
title(' le signal de  phrase  ');
xlabel('Temps (s)');
ylabel(' y');

% ecouter le  signal
sound(x,fe)

%Question 3:
% la version accelerer du signal 
sound(x,fe*2)
% la version dilater du signal 
sound(x,fe/2)
% la version normale du signal 
sound(x,fe)

%Question 4:
figure ;
stem(x)
title(' le signal de toute la phrase  ');
xlabel('Temps (s)');
ylabel(' y');
%Après le traçage de la fonction x on peut arriver a voir que le morceau 
%Rien ne sert de est contenue dans la partie de l'index 2695 j'usqu'à 53180
phrase = x(2695:53180);
figure ;
stem(phrase)
title(' signal du morceau Rien ne sert de ');
xlabel('Temps (s)');
ylabel('y');

%Question 5:
riennesertde=x(2695:(53180));
stem(riennesertde)
title(' signal du morceau Rien ne sert de ');
xlabel('Temps (s)');
ylabel('y');
sound(riennesertde,fe)

%Question 6:
courir=x((53311):(69800));
figure ;
stem(courir)
title(' signal du morceau courir ');
xlabel('Temps (s)');
ylabel('y');
sound(courir,fe)
ilfaut=x((72130):(81243));
stem(courir)
title(' signal du morceau ilfaut ');
xlabel('Temps (s)');
ylabel('y');
sound(ilfaut,fe)
partirapoint=x((86700):(end));
stem(partirapoint)
title(' signal du morceau partirapoint ');
xlabel('Temps (s)');
ylabel('y');
sound(partirapoint,fe)

%Question 7:
parole=[riennesertde,courir,ilfaut,partirapoint];
sound(parole,fe)


%% Synthèse et analyse spectrale d’une gamme de musique

%Synthèse d’une gamme de musique

%Question 1:
% Definition des variables 
fe=8192; %  La fréquence d’échantillonnage
te=1/fe;%  Le temps d’échantillonnage
N=5000;% le nombre des echontillons
t=(0:N-1)*te; % le temps reel 
% generation de la gamme do 
do=10*cos(2*pi*262*t);
sound(do,fe)
% generation de la gamme re
re=10*cos(2*pi*294*t);
sound(re,fe)
% generation de la gamme mi
mi=10*cos(2*pi*330*t);
sound(mi,fe)
% generation de la gamme fa
fa=10*cos(2*pi*349*t);
sound(re,fe)
% generation de la gamme sol
sol=10*cos(2*pi*392*t);
sound(sol,fe)
% generation de la gamme la
la=10*cos(2*pi*440*t);
sound(la,fe)
% generation de la gamme si
si=10*cos(2*pi*494*t);
sound(si,fe)
% generation de la gamme do2
do2=10*cos(2*pi*523*t);
sound(do2,fe)
musique=[do,re,mi,fa,sol,la,si,do2];
sound(musique,fe)
 

%Spectre de la gamme de musique

%Question 2:
f=(0:N-1)*(fe/N);
spectre_musique=fft(musique);
signalAnalyzer(abs(fftshift(spectre_musique)));

