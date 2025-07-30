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
