echo "¯\_(ツ)_/¯ > Starting RUN Script..."

echo "¯\_(ツ)_/¯ > Running the containers..."
# Runs the docker CONTAINERs
docker run -d --name apache res/apache_php
docker run -d --name express res/express

docker run -d -p 8082:80 --name srproxy res/static-rproxy

echo "¯\_(ツ)_/¯ > Finished RUN Script."


# Run in interactive mode:
# docker run -it --name rproxy res/static-rproxy //bin/bash


# To access the two sites :
# http://static.res.ch:8082/
# http://static.res.ch:8082/api/meteo/