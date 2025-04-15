#!/bin/bash

# Verificar se o container MySQL já está rodando, se sim, sai
if [[ $(docker ps -q -f name=mysql) ]]; then
  echo "Container MySQL já está rodando."
  exit 0
fi

# Criar uma rede Docker (caso não tenha sido criada)
docker network create crm-network

# Rodar o container MySQL
docker run -d \
  --name mysql \
  --network crm-network \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_DATABASE=crmdb \
  -p 3306:3306 \
  mysql:5.7

echo "MySQL container iniciado."
