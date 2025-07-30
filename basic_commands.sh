#---------- Basic commands for Docker Containers

#---- Manage images
# Get the list of downloaded images
docker images
# Download images
docker pull "image name"
# Download images with specific version
docker pull "image name":"version"
# Download images for specific platforms
docker pull --platform linux/x86_64 "image name"
# Remove images
docker image rm "image name":"version"

#---- Using containers
# Create containers - output give the uniq ID from container
docker create "image name"
# Run the container
docker start "Container ID"
# Review the actual containers created
docker ps
# See ALL dockers created
docker ps -a
# Stop container
docker stop "Container ID"
# Remove a container
docker rm "Container name or ID"

#---- Personalize containers
# add a specific name
docker create --name "asign NAME" "image name"
# enable ports
docker create -p"host port":"container port" --name "container name" "container image"

#---- Debug a container
# simple logs
docker logs "container name"
# follow logs ontime
docker logs --follow "container name"


#---- Automate things
# Look/Get image | Create the container | Start the container
docker run "image name"
# Detached mode - to keep running containers and get back console use
docker run -d "image name"


#---- Make it able to communicate to outsite
# Add enviroment variables: -e | Find environmental variables at docker hub image documentation
docker create --name "container name" -e "variable1 name"="variable1 parameter" -e "variable2 name"="variable2 parameter" "image name"


#---- NETWORK
# List all networks available
docker network ls
# Create a network
docker network create "network name"
# Remove a network
docker network rm "network name"
# Add a network to container creation
docker create --name monguito -p27017:27017 --network mesh "image name" -e "variable1 name"="variable1 value" -e "variable2 name"="variable2 value"


#---- Build images brom DOCKERFILE
docker build -t "container name":"tag1" "path to DOCKERFILE"


#---- DOCKER Compose
# Needs to Dockerfile and docker-compose.yml to load the app into containers
# Create containers/network/build images
docker compose up
# Remove containers/network previously created
docker compose down


#---- Volumes
