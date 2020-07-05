echo "¯\_(ツ)_/¯ > Starting BUILD Script..."
cd src

echo "¯\_(ツ)_/¯ > npm install..."
npm install

echo "¯\_(ツ)_/¯ > npm run build..."
npm run build
# npm run pack # packing is optional
cd ..

echo "¯\_(ツ)_/¯ > Building Docker image..."
# Builds the docker IMAGE
docker build -t res/express .

echo "¯\_(ツ)_/¯ > Finished BUILD Script."