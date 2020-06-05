# initialisation  
On construit les images  
`docker-compose build`  
On lance les containers  
`docker-compose up -d`  
On entre dans le container laravel  
`docker-compose exec app_laravel /bin/bash`  

# configuration de l'environnement 
On met composer à jour  
`composer update`  
On teste l'environnement  
`php artisan aff_utilisateurs`
