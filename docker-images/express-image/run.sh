echo "¯\_(ツ)_/¯ > Starting RUN Script..."

echo "¯\_(ツ)_/¯ > Running the container..."
# Runs the docker CONTAINER
docker run -d -p 9091:80 res/express

echo "¯\_(ツ)_/¯ > Finished RUN Script."