echo "¯\_(ツ)_/¯ > Starting BUILD Script..."

# -< Uncomment to rebuild the other images.
# echo "¯\_(ツ)_/¯ > Building Docker image (res/apache_php)..."
# cd ..

# cd apache-php-image/
# ./build.sh
# cd ..

# cd express-image/
# ./build.sh
# cd ..

# cd dynamic-rproxy/

echo "¯\_(ツ)_/¯ > Building Docker image (res/dynamic-rproxy)..."
# Builds the docker IMAGE
docker build -t res/dynamic-rproxy .

echo "¯\_(ツ)_/¯ > Finished BUILD Script."