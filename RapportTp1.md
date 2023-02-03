
 ![image](https://user-images.githubusercontent.com/106478263/216605755-f2eda556-58e0-4339-8c0b-1143a9f09066.png)
 
 <br>
 
 # Introduction 
 
 <br>
 
>  Ce Tp  porte sur l'analyse spectrale d'un signal en utilisant la Transformée de Fourier     Discrète (TFD). L'objectif du TP est de comprendre comment la TFD peut être utilisée pour étudier <br> la fréquence des composantes d'un signal temporel.  Nous allons  apprendre  à implémenter la TFD et à interpréter les résultats pour déterminer les fréquences prédominantes dans un signal. De plus, Nous  serons en mesure de visualiser les spectres temporels pour comprendre comment les fréquences évoluent au fil du temps. Enfin, Nous  pourrons évaluer les limites de la méthode et les considérations importantes à prendre en compte lors de l'analyse spectrale d'un signal.


 <br>
 
# Représentation temporelle et fréquentielle

 <br>
> Considérons un signal périodique x(t) : <br> 
> x = 1.2*cos(2*pi*440*t+1.2)+ 3*cos(2*pi*550*t)+ cos(2*pi*2500*t);

 <br>
 
## 1 : traçage du signal 
 
 
<br>
> Pour pouvoir tracer le  signal on doit definir les variables qui seront utliser en premier lieu 

### code 
![image](https://user-images.githubusercontent.com/106478263/216608811-8ea6042b-4790-43e0-882c-3ff4a4a686b6.png)

### code de traçage du signal 

![image](https://user-images.githubusercontent.com/106478263/216609249-4b206893-3fd5-48c1-a80c-03495628051a.png)

### output 

![image](https://user-images.githubusercontent.com/106478263/216609437-a481c3a5-8e22-4ca8-8469-b9c34c9749be.png)


## 2 :  Calcule de TFD du signal x(t) en utlisant fft , puis traçant  le spectre d'amplitude 

 <br>
 


>  Tout d'abord La Transformée de Fourier Discrète (TFD) , nous a permet de décomposer un signal temporel en ses composantes fréquentielles.

> Pour pouvoir Callculer le TFD nous allons utilise la commande du  fft  matlab 

### code Matlab 

![image](https://user-images.githubusercontent.com/106478263/216612613-0dd1f4b7-c1b3-4245-ade6-ad65b5cbb78b.png)


> Nous pouvons voyer que le spectre est centré sur le Nombre d'echantillonage N  


## 3 :  Visualisation du contenu frequentiel du signal en utilisant la fonction fftshift de matlab 

 <br>
 

 
> Tout d'abord la fonction fftshit effectue un décalage circulaire centré sur zéro du spectre en amplitude obtenu par la commande fft. La chose qui permettre d'avoir un spectre  centré  par 0 .

### code 

![image](https://user-images.githubusercontent.com/106478263/216615808-a5db44c3-9e32-4f97-934b-6b17d67ac903.png)

### output

![image](https://user-images.githubusercontent.com/106478263/216616349-cd340632-0f88-46c4-ae91-359561fffa92.png)



## 4 :  Creation d'un signal bruite 


 <br>
 
 
### code 

![image](https://user-images.githubusercontent.com/106478263/216617038-a71927a6-2ad2-4b84-9acb-445a36ba90fc.png)

#### traçage du bruit 

![image](https://user-images.githubusercontent.com/106478263/216616979-38394995-2ddf-436f-a467-7fecd152ecfd.png)


> comme nous voyons que ce bruit suit un lio normal d'une moyenne 0 et  d'ecart type 1 


### Superposition du signal avec le bruit 


![image](https://user-images.githubusercontent.com/106478263/216617493-53a120f5-d0ce-4acf-acb8-60486c4935d6.png)

#### le nouveau signal bruite 

![image](https://user-images.githubusercontent.com/106478263/216617782-41a3b01e-08b8-47c9-9bf5-709ab1201aef.png)


## 5 :  écout du  signal et puis le signal bruité.


 <br>
 
> Pour pouvoir ecouter le signal  et le signal bruite on doit utliser la commande  sound 

### code 
![image](https://user-images.githubusercontent.com/106478263/216618190-3db8ba29-d886-48ed-ac5a-fde7156ba8b6.png)

## 5 :  Calcul et  traçage du spectre de puissance du signal bruité centré à la fréquence zéro.

 ### code 
 
 ![image](https://user-images.githubusercontent.com/106478263/216618655-24c13c84-be56-4075-a036-d56e8cab7bc6.png)

### output 

![image](https://user-images.githubusercontent.com/106478263/216618774-f9e9eea3-1f25-4673-8879-66e2c3e0d518.png)

> Dans ce nouveau spectre nous arrivons à voir des fluctions d'une faible amplitude au niveau du spectre. 


## Augmentation  d’intensité de bruit et afficher du spectre : 
 
#### Augmentation de l'intensite de bruit 

![image](https://user-images.githubusercontent.com/106478263/216620110-e0c98cd0-f3c8-4ff5-b864-ef054ae4c2f7.png)

#### output 
![image](https://user-images.githubusercontent.com/106478263/216620429-d3cc0c1e-70f9-497c-a62a-4e0d27995344.png)


> Nous pouvons remarquer que lorsqu'on a augmente l'intensite de bruit  on a pas pus recuperer les composants frequentiels de notre signal , la chsoe qu'on peut deduire est que l'intensite de bruit  est importante les informations seront perdu .


 
# Analyse fréquentielle du chant du rorqual bleu
 <br>
 
> Dans cette partie , nous allons étudier l'analyse fréquentielle du chant du rorqual bleu. Nous allons utiliser des techniques d'analyse fréquentielle pour décomposer le chant en ses composantes fréquentielles et comprendre la distribution des fréquences dans le signal.


## 1 :  Chargement du fichier "bluewhale.au"

> Pour charger le fichier  noua allons utiliser la commandes audioread on va prend juste la partie correspond aux indices allant de 2.45e4 à 3.10e4.

### code 

![image](https://user-images.githubusercontent.com/106478263/216622811-9bf09000-d1a1-487a-922e-fe648c2538b6.png)


>  Avant nous allons  definir les variables avec lequelles  nous allons travailler .
  
![image](https://user-images.githubusercontent.com/106478263/216623023-c20074c8-7311-41eb-b498-db9029e3fc71.png)



## 2 :  L'ecout et la visualisialisation du chant 

## code 

![image](https://user-images.githubusercontent.com/106478263/216623877-0dc213d1-21ae-4240-8b3d-ea49c14f1d5f.png)
 
 
 ## output 
 
![image](https://user-images.githubusercontent.com/106478263/216623623-36d240c6-ee12-45d0-91da-ce7f7c103ded.png)

> ce figure eepresente  le signal sonor du chant de rorqual blue .



## 3 : densite spectrale de signal

### code 

![image](https://user-images.githubusercontent.com/106478263/216624544-197c9956-86e5-4a78-8dfc-9bc066e6e06d.png)

> La densite spectral  mesure la distribution de l'énergie du signal à différentes fréquences et est souvent utilisée pour comprendre la composition fréquentielle d'un signal. Elle peut etre calculer apartir de le spectre d'amplitude au caree .




## 4 : Détermination   fréquence fondamentale du gémissement de rorqual bleu

### code 

![image](https://user-images.githubusercontent.com/106478263/216625986-8c88ddf0-cdf7-4569-99ec-bd364f13a21d.png)

### output 

![image](https://user-images.githubusercontent.com/106478263/216626169-a01e39ef-c92b-420c-a092-3bf4155d81b3.png)


> la fréquence fondamentale est la frequence correspondante a la premier amplitude apres f=0 .

 
 # Conclusion 
 
 > En conclusion, ce TP a permis de découvrir les différentes étapes nécessaires pour effectuer une analyse fréquentielle sur un signal audio. Nous avons vu comment la Transformée de Fourier Discrète (TFD) peut être utilisée pour décomposer un signal temporel en une représentation fréquentielle et comment la densité spectrale de puissance peut être calculée à partir des coefficients de la TFD. Ce TP a montré l'importance de la fréquence fondamentale dans la détermination de la tonalité perçue d'un son et a également permis de comprendre comment les différentes fréquences dans un signal peuvent être analysées pour en comprendre la composition. En fin de compte, ce TP a donné une base solide pour continuer à explorer les techniques d'analyse fréquentielle et leur application dans de nombreux domaines, notamment la signalétique, la reconnaissance de la parole et la musique.
 
