 ![image](https://user-images.githubusercontent.com/106478263/216650607-e89758b6-119e-4eae-ab49-42f60d6bf4da.png)

# Introduction 

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

### Appilcation du filtrage 1

##### code 

![image](https://user-images.githubusercontent.com/106478263/216655106-d6352266-f9c2-45c0-b3f8-5a8b46d3d596.png)

##### output du filtrage

![image](https://user-images.githubusercontent.com/106478263/216656337-f5f70b17-b4dc-4987-b876-1a4aed00e06b.png)

> Nous pouvons remarquer que on a  pu diminier un les perturbations en appliquant ce premier filtre qui'est un filtre pass-haut vaut dire qu'il a laisse passer que les hautes freqences 


# "Suppression des interférences des lignes électriques 50Hz" 

