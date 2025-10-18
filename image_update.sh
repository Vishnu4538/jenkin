#!/bin/bash


username=$1 # docker username

#delete image line

sed -i {"/image:/d"} vishnu.yml

sleep 9s

#Adding image line to file $1 is username of docker and $2 is for tag

sed -i "19i\        image: docker.io/$1/nginxapp:$2" vishnu.yml

git add .

git commit -m "Image is version updated to $2"

echo "We have committed tag change to $2"

git push origin main 

echo " we have pushed the updated image to $1 account with tag $2"

