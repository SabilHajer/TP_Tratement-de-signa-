
![image](https://user-images.githubusercontent.com/106478263/216670573-f2038f96-b649-42b1-ba06-ecf45c1a05de.png)


# Introduction 

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

![image](https://user-images.githubusercontent.com/106478263/216677841-e62a2c16-0418-40d7-83a5-e791470d42ad.png)


## output H1

## output H2
## output H3 

## Question 6 : application de filtre avec differentes frequences de coupures .









