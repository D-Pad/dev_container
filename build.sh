#!/bin/bash 

NAME="dev"

running=$(sudo docker ps -f "name=$NAME" | awk '{print $NF}' | grep $NAME)
if [[ "$running" =~ "$NAME" ]]; then 
    docker compose down 
fi 

docker pull archlinux:latest
docker rmi developer-dev
docker compose up -d --force-recreate

