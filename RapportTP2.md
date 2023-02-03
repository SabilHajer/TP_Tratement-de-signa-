

![image](https://user-images.githubusercontent.com/106478263/216630995-60cded32-dbaa-4dcf-aef1-348bd3a81669.png)

<br>

#  Introduction 

Ce TP a pour but d'étudier et de comprendre les différentes techniques utilisées pour analyser et synthétiser une gamme de musique. L'analyse spectrale permettra de déterminer les fréquences présentes dans la gamme et la synthèse spectrale permettra de générer une gamme à partir de ces fréquences. L'objectif final est de comprendre comment les différentes techniques d'analyse et de synthèse peuvent être utilisées pour créer et manipuler les sons dans le contexte de la musique.

<br>


#  Jeux de mots
<br>

## Question 1 : - Sauvegarder le fichier et  le charger  dans MATLAB à l’aide de la commande « audioread »: 

### code 

 ![image](https://user-images.githubusercontent.com/106478263/216634199-491df2b5-d2d9-4805-b878-f42daa79e2d9.png)


## Question 2 :  traçage du signal enregistré en fonction du temps 

###  traçage du signal  code : 

![image](https://user-images.githubusercontent.com/106478263/216635127-d636e759-26fa-4b9d-ab5e-e9439d4779a6.png)

### output du plot 

![image](https://user-images.githubusercontent.com/106478263/216635357-c79c3e9a-ea6f-4cca-97e3-15a90e7b6e09.png)

### Ecout de signal code 

![image](https://user-images.githubusercontent.com/106478263/216640857-9c190f74-64e1-4bd3-8b09-707031602198.png)


## Question 3 :  Opération d'une compression ou d'une dilatation du spectre initial d’où la version plus grave ou plus aigüe du signal écouté.

### code 
![image](https://user-images.githubusercontent.com/106478263/216636516-53964969-5923-4bd1-b144-269e6b9e5af5.png)

> Pour pouvoir compresser le signal  vaut dire l'accelerer on doit augmenter sa frequence en le  multilpiant avec un facteur qu'est strictement superieur à  1 

>  Pour la version dilatee on fait l'inverse on le mutiple par un facteur strictement inferieur  à  1  pour pouvant deminuer son vitesse et donc devenir grave


## Question 4 :Tracez le signal en fonction des indices du vecteur x, puis essayez de repérer les indices de début et de fin de la phrase « Rien ne sert de ».

### code 

![image](https://user-images.githubusercontent.com/106478263/216639540-fef486f6-8af9-4367-bb24-224e2aaa5fc6.png)

### output 

> Avant couper le signal 
> 
![image](https://user-images.githubusercontent.com/106478263/216640036-5f198b05-6b46-41ef-ac37-25c34cb457bd.png)

> voici le signal du morceau : 

![image](https://user-images.githubusercontent.com/106478263/216640346-837a88f3-eeba-42bc-8160-8bffa2807fe4.png)

## Question 5 : segmentation  du premier mot 

![image](https://user-images.githubusercontent.com/106478263/216641409-a883d971-90cb-4736-8d51-83297f5edda1.png)

## Question 6 : Segmentez cette fois-ci toute la phrase en créant les variables suivantes riennesertde, courir, ilfaut, partirapoint.

### courir

#### code 
![image](https://user-images.githubusercontent.com/106478263/216642445-71ae619a-c191-4e97-92c1-52e02cf15ea7.png)

#### output 
![image](https://user-images.githubusercontent.com/106478263/216642336-a002bc7f-6e7c-435f-9982-e1de8249e450.png)


###  ilfaut

#### code 
![image](https://user-images.githubusercontent.com/106478263/216643118-d488e9aa-98f6-4fde-8c1c-20f1a5aa74d1.png)

#### output 
![image](https://user-images.githubusercontent.com/106478263/216643047-af58b5d8-ecc5-471a-8f64-30deac8fe56f.png)


### partirapoint

#### code 
![image](https://user-images.githubusercontent.com/106478263/216643558-2907fa23-9ff6-42ac-8d80-86b4ac931a0c.png)

#### output 
![image](https://user-images.githubusercontent.com/106478263/216643491-042ba3be-dbdc-401f-885e-4365468870ec.png)


## Question 7 : Réarrangemrnt de la phrase synthétisée « Rien ne sert de partir à point, il faut courir ».

## code 
![image](https://user-images.githubusercontent.com/106478263/216644055-dfd477a9-7608-4bcd-903c-bc47274ddb21.png)


#  Synthèse et analyse spectrale d’une gamme de musique

## Question 7 : Création  d'un programme qui permet de jouer une gamme de musique

> La fréquence 
de chaque note est précisée dans le tableau ci-dessous. Chaque note aura une durée 
de 1s. La durée de la gamme sera donc de 8s. La fréquence d’échantillonnage fe sera 
fixée à 8192 Hz.

![image](https://user-images.githubusercontent.com/106478263/216644860-9bbb0453-7aad-4d6c-8b62-de56d135bc10.png)

> Chaque gamme de musique est representé par uns signl  sinusoïdal  d'une frequence et d'amplitude precisses 

### code 

![image](https://user-images.githubusercontent.com/106478263/216646120-cfcdd2e6-f607-4e0e-ba7d-842149c65b4e.png)

![image](https://user-images.githubusercontent.com/106478263/216646236-82d06231-ae95-41cb-92e0-53ec43c651d6.png)

![image](https://user-images.githubusercontent.com/106478263/216646394-b0c61e3d-b1bd-457b-b009-8dd87a717769.png)

# Spectre de la gamme de musique

## Question 2 :Utiliseatiom d’outil graphique d’analyse de signaux signalAnalyzer pour visualiser le spectre de votre gamme 

### code 

![image](https://user-images.githubusercontent.com/106478263/216646602-4c55bd40-33b1-4850-bc82-7d14eda8177c.png)

###  output 

![image](https://user-images.githubusercontent.com/106478263/216647523-fef9ebaa-5928-492c-b8e1-42c4ea385f66.png)

#  Conclusion 

  En conclusion, ce TP  a été un exercice instructif qui a permis de mieux comprendre les techniques utilisées pour analyser et synthétiser la musique. Nous avons eu l'occasion de travailler avec des outils pour effectuer une analyse spectrale et une synthèse spectrale, ce qui a amélioré notre compréhension de la manière dont les fréquences peuvent être utilisées pour produire des sons. Enfin, ce TP a également contribué à développer les compétences en programmation et en analyse de données, ce qui est essentiel pour tout développeur de logiciels de musique.
