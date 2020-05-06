#!/bin/bash
sudo usermod -aG docker $USER
source ~/.bashrc
docker login --username=$DOCKER_USER --password=$DOCKER_PASS
docker build -t thenu97/frontend /var/lib/jenkins/workspace/latte/spring-petclinic-ang/.
docker push thenu97/frontend
sleep 20
docker build --build-arg url=${url} --build-arg password=${password} --build-arg username=${username} -t thenu97/backendup /var/lib/jenkins/workspace/latte/spring-petclinic-res/.
docker push thenu97/backendup