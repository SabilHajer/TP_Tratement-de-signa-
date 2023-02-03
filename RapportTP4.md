
![image](https://user-images.githubusercontent.com/106478263/216670573-f2038f96-b649-42b1-ba06-ecf45c1a05de.png)


# Introduction 
Ce TP vise à  nous familiariser avec les techniques de filtrage utilisées pour traiter les signaux analogiques. Nous pouvons  s'attendre à apprendre les différents types de filtres analogiques, tels que les filtres passe-bas, passe-haut, passe-bande et arrête-bande. Ils peuvent également découvrir comment concevoir et tester ces filtres à l'aide de différents outils et matériels, tels que les simulateurs de circuits, les oscilloscopes et les générateurs de signaux. L'objectif final est de comprendre comment les filtres analogiques peuvent être utilisés pour améliorer la qualité des signaux en éliminant le bruit et en sélectionnant les fréquences souhaitées. Nous serons en mesure de concevoir et de tester des filtres analogiques pour des applications pratiques dans divers domaines tels que la communication, la médecine et la robotique.

# Filtrage et diagramme de Bode

## Question 1 : Definition du signal x(t)

### code 

![image](https://user-images.githubusercontent.com/106478263/216671448-d3d48197-9a53-4adb-a738-de1247f96929.png)


## Question 2 : Definition du signal x(t)

### plot du signal x(t)

#### code 

![image](https://user-images.githubusercontent.com/106478263/216672308-08add4e0-bc5e-4f5f-81ec-d25cceb7d2a9.png)

#### output

![image](https://user-images.githubusercontent.com/106478263/216672396-7b30686f-19b2-4d1a-b331-5b7dd343b083.png)

###  Calcule de TFD et le spectre d'amplitude de x(t)

> avec te = 1e-4 ;

#### code 

![image](https://user-images.githubusercontent.com/106478263/216673804-d889933c-11a1-4c1e-b38c-6c7f05b422bf.png)

#### output 


![image](https://user-images.githubusercontent.com/106478263/216673053-62c70f30-390e-4dd8-a5bc-420cf4e9cf47.png)

> avec te = 0.0005 ;


#### output 


![image](https://user-images.githubusercontent.com/106478263/216673359-c5005c40-7123-4516-98d7-a5a940420389.png)


## Question 3 : Tracer le module de la fonction H(f) avec K=1 et wc = 50 rad/s.

> definition  de la fonction de transmittance 

![image](https://user-images.githubusercontent.com/106478263/216674126-8ea8eb87-5832-4808-955e-483eb3d62c5f.png)

### code 

![image](https://user-images.githubusercontent.com/106478263/216674622-cfd6e712-42ef-49c6-bb28-e0c43b354a95.png)



### output 

![image](https://user-images.githubusercontent.com/106478263/216674862-eb83e032-536e-4824-b7f6-ea8a1e3af180.png)



## Question 4 : Tracer 20.log(|H(f)|) pour différentes pulsations de coupure wc,


> on premier lieu on va genetr la fonction de transmottamce pour differentes frequences 

### code 

![image](https://user-images.githubusercontent.com/106478263/216675238-6b91518f-6b89-4f79-b5f4-0eff177363bb.png)

> Maintenent on va calculer le gain de chaque fonction 

### code

![image](https://user-images.githubusercontent.com/106478263/216675467-b49cbe0c-8d9f-4313-94f9-c0a3e982607b.png)


> on va oublier de calculer les phase de chaqu'une 

### code

![image](https://user-images.githubusercontent.com/106478263/216675652-4f8b4e2d-160f-4599-b1be-a85baee886bd.png)


> Nous allons comparer entre le diagrame de bode de chaque H(i)
 


### code avec semilog

![image](https://user-images.githubusercontent.com/106478263/216676349-e59aecee-908e-4889-a694-2010bb2e7b34.png)


### output 

![image](https://user-images.githubusercontent.com/106478263/216676693-d6e34b73-06d3-4236-a539-816d959d0eaa.png)


> nous pouvons bien remarquer que la differnec entre les trois H(i) et sa reponse qui represente qui sont les frequence qui vont etre attenuer et qui sont les frequences passentes . pour bien lire le diagrame de bode  on sait que pour garder les informations utiles on doit avoiru gain qui egale a zero et un dephasege nule  . les valeurs dans  le diagramme de bode sont representer en db donc 0 dB equivalent a 1  dona l'echelles lineaires. 


## Question 5 : application de filtre avec differentes frequences de coupures .

## code 

![image](https://user-images.githubusercontent.com/106478263/216678867-664182ba-be14-4dba-8f2f-535addde58f6.png)


## output H1
![image](https://user-images.githubusercontent.com/106478263/216679125-07402334-44cc-41ae-82ee-f1abd2b0c016.png)

## output H2
![image](https://user-images.githubusercontent.com/106478263/216679308-b04c6fc7-7192-4d68-88b5-dd6f467cea0b.png)

## output H3 
![image](https://user-images.githubusercontent.com/106478263/216679340-50512729-3ce4-45fd-984c-0b4e29093743.png)

>  on peut remarquer que  le signal filtre de chaque H(i) obtenu  apres l'application des caracterstiques de chaque filtre . chaqu'un   de filtre  attenue une certaines frequences avec un certain gain . la chose qu'on doit prendre est lors de choix de filtre on doit choisir celle  qui garde les frequences  utiles et attunue les autres indesirables .

## Question 7 : frequence de coupure choisit .

> J'ai choisit la frequence  fc = 150 

## Question 8 :  le signal obrtenu 
![image](https://user-images.githubusercontent.com/106478263/216680991-e4a0281a-771d-4dd8-900c-f43bcae99396.png)


# Dé-bruitage d'un signal sonore

## Question 1 : Proposer une méthode pour supprimer ce bruit sur le signal

> pour pouvoir supprimer le bruit o doit appliquer un filtre analogique 

## Question 2 : Mettez-la en oeuvre. Quelle influence à le paramètre K du filtre que vous avez utilisé 

> en premier lieu on dot telecharger le ficher et puis definit les variables a utiluse  

### code 

![image](https://user-images.githubusercontent.com/106478263/216681821-403c4960-29c7-4ed8-af5f-f670d2d6c2ff.png)

> maitenant pour pouvoir analyser le signal on doit tracer son spectre 

### code 


![image](https://user-images.githubusercontent.com/106478263/216682432-89a2480a-f25c-480b-8688-79a1d0c073a6.png)




### output 
![image](https://user-images.githubusercontent.com/106478263/216682384-991c4299-1a58-47b9-89f3-456959ee30db.png)


>  voici les parametres choisit pour le filtre 

## code 

![image](https://user-images.githubusercontent.com/106478263/216682669-d01953dd-0692-41ef-93d9-2960cb4ce1d7.png)

> calculons la transmitance complexe  

![image](https://user-images.githubusercontent.com/106478263/216682794-516d13bc-1089-4fc5-80df-107eb2a1e984.png)


> pour bien voir est ce que le filtre est bien ou non on doit voir son diarame de bode 

### code 

![image](https://user-images.githubusercontent.com/106478263/216683563-f7f733d0-37b1-49ca-ba15-8ad4dbe014bd.png)


### output

![image](https://user-images.githubusercontent.com/106478263/216683617-00a9fe6b-8e04-48bb-8b77-64f41eefb90f.png)



> maitenent on va appliquer le filtre 

# code 

![image](https://user-images.githubusercontent.com/106478263/216683786-de35680b-e3cf-4c2a-aa15-b3d9d270cc9f.png)

## Question 4 : Quelles remarques pouvez-vous faire notamment sur la sonorité du signal fina 


![image](https://user-images.githubusercontent.com/106478263/216684071-2bf67a52-d4cb-4c98-b603-f4286dbf11d7.png)


> on a pu attenuer le siganl mais au meme temps on a eu une attenuation au niveau de volume de signal sonor 


#  conclusion 

 En conclusion, le filtrage analogique est une technique clé pour traiter les signaux analogiques et améliorer leur qualité. Ce TP nous a  permet de développer nos  compétences en matière de conception et de test de filtres analogiques.Nous avons pu  comprendre les différents types de filtres et comment ils peuvent être utilisés pour éliminer le bruit et sélectionner les fréquences souhaitées. En comprenant les principes du filtrage analogique, Nous avons pu  contribuer à améliorer la qualité des signaux pour des applications pratiques dans divers domaines. En fin de compte, cette compréhension aide à développer des systèmes plus efficaces et fiables pour les utilisateurs finaux.

