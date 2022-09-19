#!/bin/bash

containers=$(docker container ls -aq)
images=$(docker images -q)

echo -e "Beginning system pruning...\n"

if [ ! -z "$containers" ]
then
    echo -e "Stopping and removing containers...\n"
    docker container stop $containers
    docker container rm $containers
    echo -e "\n"
else
    echo -e "There are no containers top stop/remove.\n"
fi

if [ ! -z "$images" ]
then
    echo -e "Removing images...\n"
    docker rmi $(docker images -q)
    echo -e "\n"
else
    echo -e "There are no images to remove.\n"
fi

echo -e "Removing unused networks...\n"
docker network prune -f

echo -e "Removing unused volumes...\n"
docker volume prune -f

echo -e "Prune Complete.\n"

