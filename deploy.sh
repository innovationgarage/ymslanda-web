#! /bin/sh

export DOCKER_HOST=tcp://ymslanda.innovationgarage.tech:2375

docker build --tag ymslanda.innovationgarage.tech:5000/ymslanda_web:latest .
docker push ymslanda.innovationgarage.tech:5000/ymslanda_web:latest 
docker stack deploy -c docker-compose.yml ymslanda_web
