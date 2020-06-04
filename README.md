# initialisation  
`docker-compose build`  
`docker-compose up -d`  
On entre dans le container laravel  
`docker-compose exec app_laravel /bin/bash`  

# configuration de l'environnement 
On se rend dans le dossier synchronisé avec notre projet en local puis dans notre application laravel  
`cd /projet/laravel_app`  
On met composer à jour  
`composer update`  
On teste l'environnement  
`php artisan aff_utilisateurs`
