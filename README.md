# initialisation
`docker-compose build`
`docker-compose up -d`
On entre dans le container laravel  
`docker-compose exec app_laravel /bin/bash`  

# configuration de l'environnement 
On se rend dans le dossier synchronisé avec notre projet en local puis dans notre application laravel  
`cd /projet/my_app`  
On met composer à jour  
`composer update`  

# connexion à la base de données mysql
On recherche **en local** l'adresse ip sur laquelle tourne notre container mysql  
`docker inspect composetest_mariadb_1 | grep IPAddress` --> adresse_ip  
On se connecte au container mariadb  
`mysql -u root -ppassword -h `adresse_ip` -P 3306`  

# initialisation de la base de données
`CREATE DATABASE db_test;`  
`USE db_test;`  
`CREATE TABLE utilisateur  
(
    id INT PRIMARY KEY NOT NULL,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(255)
);`  
`INSERT INTO utilisateur VALUES ('1','navet', 'eric', 'empail@hg.com'),('2','azerty', 'thomas', 'azscff@hg.com'),('3','caouet', 'theo', 'azedcvb@hg.com');`

On retourne dans l'application laravel et on lance la commande qui affiche les utilisateurs  
`php artisan aff_utilisateurs`
