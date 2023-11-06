# Go to the root of this project
cd ~/Documents/Workspaces/Docker/apache-php

## If the Docker buildx instance is unusable, recreate it
docker buildx rm multiarch
docker buildx create --name multiarch --use

# Build the Docker image
docker buildx build --no-cache --progress=plain --push --platform linux/amd64,linux/arm64 --rm -t wujidadi/ap:3.1.1 . 2>&1 | tee $D/docker-build-ap.log

# Create test container and delete it finally
docker run -d -p 50000:80 -it --name Test wujidadi/ap:3.1.1
# docker exec -it Test zsh
docker exec -it Test vim --version | grep 'Included patches'
docker exec -it Test nano -V | grep 'GNU nano, version'
docker exec -it Test apache2 -v | grep 'Server version'
docker exec -it Test php -v | grep built
docker exec -it Test php -i | grep swoole -1 | grep Version
docker exec -it Test composer -V
docker exec -it Test node -v
docker exec -it Test npm -v
docker exec -it Test cat /opt/microsoft/msodbcsql18/etc/odbcinst.ini | grep 'Driver='
docker stop Test
docker rm Test
