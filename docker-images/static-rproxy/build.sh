echo "¯\_(ツ)_/¯ > Starting BUILD Script..."

echo "¯\_(ツ)_/¯ > Building Docker image..."
# Builds the docker IMAGE
docker build -t res/static-rproxy .

echo "¯\_(ツ)_/¯ > Finished BUILD Script."