# Shortcut to build the image and run the container (aka instanciated image).


# Varialbe names: (MUST BE SAME AS in run.sh !!!)
apache_name="apache-s5"
express_name="express-s5"
drproxy_name="drproxy-s5"


echo "¯\_(ツ)_/¯ > Starting Build & RUN Script..."

echo "¯\_(ツ)_/¯ > Deleting old containers : "
docker rm -f $apache_name $express_name $drproxy_name

./build.sh 
./run.sh

echo "¯\_(ツ)_/¯ > Finished Build & RUN Script."
