#!/bin/bash

echo "Enter what changes your make to git repo:"

read modified

git add .


git commit -m "$modified"


git push origin main
