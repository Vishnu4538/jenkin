#!/bin/bash


username=$1 # docker username

delete image line

sed -i {"/image:/d"} vishnu.yml

sleep 9s


adding image line to file $1 is username of docker and $2 is for tag
sed -i "19i\        image: docker.io/$1/front:$2" vishnu.yml

git add vishnu.yml

git commit -m "Imaged is update to $1"

echo "We have commit tag change to $1"

git push origin main 

echo " we have pushed the updated image to $1 account and with tag $2"

