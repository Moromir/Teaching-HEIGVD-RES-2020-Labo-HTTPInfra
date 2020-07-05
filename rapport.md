# RES2020 - Laboratoire HTTPInfra - Alexandre Simik
@Moromir
---
## Step 1: Static HTTP server with apache httpd
Pour ma part j'ai suivi la vidéo je par d'une image Docker existante avec l'instruction suivante dans le `Dockerfile` :

```Dockerfile
FROM php:5.6.9-apache
```
(On peut noter ici que l'utilisation de php est inutile vu que l'on sert uniquement du contenu statique. Anisi seule l'image *httpd* aurait pu suffire.)

 - You have a GitHub repo with everything needed to build the Docker image.
   - Oui
 - You can do a demo, where you build the image, run a container and access content from a browser.
   - Il y a les scripts `build.sh` et `run.sh` dans le dossier `./docker-images/apache-php-image/`
 - You have used a nice looking web template, different from the one shown in the webcast.
   - Oui
 - You are able to explain what you do in the Dockerfile.
   - `COPY src/ /var/www/html/` copie le contenu de `src` dans l'image à l'emplacement prévu pour le contenu statique.

 - You are able to show where the apache config files are located (in a running container).
   - dans le dossier `/etc/apache2/` (voir documentation officielle pour les détails.)
 - You have documented your configuration in your report.
   - Pour ma part j'ai mappé le port 9090 au port 80 comme dans la vidéo.

## Step 2: Dynamic HTTP server with express.js
Le fonctionnement est simple, pour run l'application en local il faut être dans le dossier `./docker-images/express-image/`.

Les commandes suivantes sont utiles : 
 - `npm install`, pour installer les dépendences la 1ère fois.
 - `npm run build` pour transpiler le code ES6 avec *babel* en javascript "standard".
 - `npm run start` pour lancer l'application.
 - `npm run pack` (bonus) pour empaqueter l'application en simple exécutable, pour les 3 grandes plateformes.

Objectifs :

 - You have a GitHub repo with everything needed to build the Docker image.
   - Oui
 - You can do a demo, where you build the image, run a container and access content from a browser.
   - Oui `build.sh`, `run.sh` et `bar.sh` dans le dossier `./docker-images/express-image/`
 - You generate dynamic, random content and return a JSON payload to the client.
   - Oui
 - You cannot return the same content as the webcast (you cannot return a list of people).
   - Oui j'ai fait de la météo
 - You don't have to use express.js; if you want, you can use another JavaScript web framework or even another language.
   - Personellement j'aime express mais j'ai utilisé la syntaxe ES6 (pas totalement supportée par *node.js* du coup j'ai choisi de "transpiler" le code avec *babel*)
 - You have **documented** your configuration in your report.
   - Oui


## Step 3: Reverse proxy with apache (static configuration)

Objectifs : 
 -  You have a GitHub repo with everything needed to build the Docker image for the container.
    -  Oui
 -  You can do a demo, where you start from an "empty" Docker environment (no container running) and where you start 3 containers: static server, dynamic server and reverse proxy; in the demo, you prove that the routing is done correctly by the reverse proxy.
    -  Oui simplement exécuter `bar.sh` (vérifier que l'image apache est bien build).
 -  You can explain and prove that the static and dynamic servers cannot be reached directly (reverse proxy is a single entry point in the infra). 
    -  Oui car on les lance sans l'option `-p` (port mapping).
 -  You are able to explain why the static configuration is fragile and needs to be improved.
    -  Tout simplement si on ajoute un container on ne peut pas prévoir l'adresse IP qu'il obtient. 
 -  You have **documented** your configuration in your report.
    -  Oui


## Step 4: AJAX requests with JQuery



Objectifs : 

 -  You have a GitHub repo with everything needed to build the various images.
 -  You have found a way to replace the static configuration of the reverse proxy (hard-coded IP adresses) with a dynamic configuration.
 -  You may use the approach presented in the webcast (environment variables and PHP script executed when the reverse proxy container is started), or you may use another approach. The requirement is that you should not have to rebuild the reverse proxy Docker image when the IP addresses of the servers change.
 -  You are able to do an end-to-end demo with a well-prepared scenario. Make sure that you can demonstrate that everything works fine when the IP addresses change!
 -  You are able to explain how you have implemented the solution and walk us through the configuration and the code.
 -  You have **documented** your configuration in your report.