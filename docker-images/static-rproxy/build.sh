echo "¯\_(ツ)_/¯ > Starting BUILD Script..."

echo "¯\_(ツ)_/¯ > Building Docker image (res/apache_php)..."
cd ..
cd apache-php-image/
./build.sh
cd ..
cd static-rproxy/


echo "¯\_(ツ)_/¯ > Building Docker image (res/static-rproxy)..."
# Builds the docker IMAGE
docker build -t res/static-rproxy .

echo "¯\_(ツ)_/¯ > Finished BUILD Script."