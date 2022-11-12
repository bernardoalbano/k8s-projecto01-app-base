#!/bin/bash

echo "Criando as imagens........"

docker build -t abernardo2/projeto-backend:1.0 /backend/.
docker build -t abernardo2/projeto-database:1.0 /database/.

echo "Realizando push das imagens........"

docker login -u abernardo2 -p Matilde,1996

docker push abernardo2/projeto-backend:1.0
docker push abernardo2/projeto-database:1.0

echo "Criando serviços no cluster Kubernetes......"

kubectl apply -f ./services.yml

echo "Criando os deployments......"

kubectl apply -f ./deployment.yml