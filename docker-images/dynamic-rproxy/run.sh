#!/bin/bash

# Varialbe names: (MUST BE SAME AS in bar.sh !!!)
apache_name="apache-s5"
express_name="express-s5"
drproxy_name="drproxy-s5"

echo "¯\_(ツ)_/¯ > Starting RUN Script..."

echo "¯\_(ツ)_/¯ > Running the containers..."
# Runs the docker CONTAINERs
docker run -d --name $apache_name res/apache_php
docker run -d --name $express_name res/express

# You need to have "jq" https://stedolan.github.io/jq/

# Here we simply extract the IP from the docker inspect command output using jq. (-r is for raw output)
# We can use the variable easily to pass it to the docker run command.
apache_ip=$(docker inspect $apache_name | ./jq -r '.[0].NetworkSettings.Networks.bridge.IPAddress')
express_ip=$(docker inspect $express_name | ./jq -r '.[0].NetworkSettings.Networks.bridge.IPAddress')
echo "$apache_name has the following IP : $apache_ip"
echo "$express_name has the following IP : $express_ip"

docker run -d -p 8083:80 --name $drproxy_name -e STATIC_APP="$apache_ip:80" -e DYNAMIC_APP="$express_ip:80" res/dynamic-rproxy

echo "¯\_(ツ)_/¯ > Finished RUN Script."


# Run in interactive mode:
# docker run -it -p 8083:80 --name rproxy res/dynamic-rproxy //bin/bash
# docker exec -it drproxy //bin/bash


# To access the two sites :
# http://dynamic.res.ch:8082/
# http://dynamic.res.ch:8082/api/meteo/