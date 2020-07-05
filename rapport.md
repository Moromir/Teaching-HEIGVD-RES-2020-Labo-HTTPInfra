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
   - //TODO
 - You are able to explain what you do in the Dockerfile.
   - `COPY src/ /var/www/html/` copie le contenu de `src` dans l'image à l'emplacement prévu pour le contenu statique.

 - You are able to show where the apache config files are located (in a running container).
   - dans le dossier `/etc/apache2/` (voir documentation officielle pour les détails.)
 - You have documented your configuration in your report.
   - Pour ma part j'ai mappé le port 9090 au port 80 comme dans la vidéo.