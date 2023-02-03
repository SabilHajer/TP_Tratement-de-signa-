 ![image](https://user-images.githubusercontent.com/106478263/216650607-e89758b6-119e-4eae-ab49-42f60d6bf4da.png)

# Introduction 

Ce  TP de traitement d'un signal ECG vise à nous  familiariser avec les différentes techniques utilisées pour analyser les signaux ECG. Nous pouvons  s'attendre à acquérir des compétences en matière d'acquisition de données, de filtrage, de détection d'anomalies et d'interprétation des résultats. Ce TP peut inclure des activités pratiques, telles que l'utilisation de logiciels spécialisés pour traiter les signaux ECG, ainsi que la lecture et l'analyse de publications scientifiques sur le sujet. L'objectif final est de développer une compréhension approfondie du traitement des signaux ECG et de la manière dont il peut être utilisé pour améliorer la santé cardiaque.

# Suppression du bruit provoqué par les mouvements du corps

## Question 1 : L e sauvegardement et le chargement du fichier ECG 

### code 

![image](https://user-images.githubusercontent.com/106478263/216651570-35c44d85-4d49-41f0-ba63-e3f2fd4c4e49.png)


## Question 2 : traçage  du signal 

### code 

![image](https://user-images.githubusercontent.com/106478263/216652525-2512170b-bce0-4ac9-b157-c392a51651e6.png)


### output 

![image](https://user-images.githubusercontent.com/106478263/216652927-7ef5df9a-8327-4cf7-8ebf-12bb956974bf.png)

#### un zomme sur untervalle [0.5 1.5]
![image](https://user-images.githubusercontent.com/106478263/216652625-fc1a147e-743e-4d5c-9031-e5553de07a57.png)

## Question 3 : filtrage du ecg 

> pour pouvoir filtrer ecg on va utiiser un filtre pass-haut avec une frequence de coupure =0.5 Hz 
> en premier lieu on va calculer TFD du signal 

### Clculons TFD 

##### code 
![image](https://user-images.githubusercontent.com/106478263/216656007-8e6bf314-e9b9-43d0-80a2-4fd1e8160b9d.png)

##### output 

![image](https://user-images.githubusercontent.com/106478263/216656139-050afb36-f16c-42ea-ad28-20cfc6fcc504.png)


### generation d'un fltre pass_haut

##### code 

![image](https://user-images.githubusercontent.com/106478263/216653892-f05dbaef-d60f-4307-b576-085b8cf9ca97.png)


## Question 4  :   Appilcation du filtrage 1

##### code 

![image](https://user-images.githubusercontent.com/106478263/216655106-d6352266-f9c2-45c0-b3f8-5a8b46d3d596.png)

##### output du filtrage

![image](https://user-images.githubusercontent.com/106478263/216656337-f5f70b17-b4dc-4987-b876-1a4aed00e06b.png)

> Nous pouvons remarquer que on a  pu diminier un les perturbations en appliquant ce premier filtre qui'est un filtre pass-haut vaut dire qu'il a laisse passer que les hautes freqences 


# "Suppression des interférences des lignes électriques 50Hz" 

## Question 5  :   Appilcation du filtrage Notch idéal

#### generation du filtre code 

![image](https://user-images.githubusercontent.com/106478263/216664592-b46f0406-4854-46a4-a5d3-e3e7e0eb1815.png)

#### Calcule de TFD  code 

![image](https://user-images.githubusercontent.com/106478263/216664794-8e2228e4-75fa-4782-bc47-ae050c6be8e6.png)

### le spectre d'amplitude de ecg1

![image](https://user-images.githubusercontent.com/106478263/216664986-6ba74617-bc33-4347-8148-efdc2302548f.png)

### output 

![image](https://user-images.githubusercontent.com/106478263/216665132-f21e7263-85b4-49c2-a3a8-2981f8c383d7.png)

#### application du filtre 

![image](https://user-images.githubusercontent.com/106478263/216665275-1b297b3c-4af9-4eba-a831-e014a7d2f6c0.png)

## Question 6  :   le signal filtree ecg2

### code 
![image](https://user-images.githubusercontent.com/106478263/216665473-71af3ce5-2a02-4766-aca0-f4bd8ee11a98.png)

### output 

![image](https://user-images.githubusercontent.com/106478263/216665604-755b2517-fa73-4497-a7f0-89bcd16e5084.png)


# "Amélioration du rapport signal sur bruit"

## Question 7 :   generation d'un filtre pass-bass 

### calcule de TFD de ecg2 et son spectre d'amplitude 
##### code 
![image](https://user-images.githubusercontent.com/106478263/216666605-8275a003-ca30-478c-a267-ba81448c0a0c.png)

##### output 
![image](https://user-images.githubusercontent.com/106478263/216666524-d96913f4-f58f-4d27-8076-726d3dec0045.png)

###  Conception du filtre 
![image](https://user-images.githubusercontent.com/106478263/216667069-3bd3a3fc-c7a7-4b89-b8fd-525412d5e350.png)

## Question 8  :   le signal filtrer 
#### application du filtre 

#### code 
![image](https://user-images.githubusercontent.com/106478263/216667425-8453c0c5-fca1-45b4-b25a-0bb0a8c86b77.png)

![image](https://user-images.githubusercontent.com/106478263/216667521-46be139a-01d1-43e7-ae85-acf6d8cbc03c.png)

> nous pouvons voir qu'un peut  bien filtrer le signal tout en gardent que les informations utiles .  

### difference entre ecg et ecg3 
##### code 
![image](https://user-images.githubusercontent.com/106478263/216668419-d27f439d-f326-428a-8983-9fb5e3827630.png)
##### output 

![image](https://user-images.githubusercontent.com/106478263/216668696-b691d575-5751-4b2a-9907-25de397d6d01.png)

# "Identification de la fréquence cardiaque avec la fonction d’autocorrélation "



## Question 9 :     calculer d’autocorrélation du signal ECG

![image](https://user-images.githubusercontent.com/106478263/216668959-e2694d06-4e95-49b3-888c-d42a782288a8.png)

![image](https://user-images.githubusercontent.com/106478263/216669083-98928846-5a5b-4ba1-85fe-386af6a97411.png)


# conclusion 

 En conclusion, le traitement d'un signal ECG est une étape cruciale pour comprendre l'état de santé cardiaque d'une personne. En suivant un TP sur ce sujet, Nous avons pu  développer des compétences pratiques en matière d'acquisition, de filtrage, de détection d'anomalies et d'interprétation des signaux ECG. L'objectif final est de fournir une image claire de l'état de santé cardiaque pour aider à diagnostiquer et à traiter des conditions cardiaques. Grâce à ces connaissances, Noua avons pu  contribuer à améliorer la prise en charge des patients et à promouvoir une vie plus saine.
 
