#!/bin/bash

docker network create crm-network

docker run -d \
  --name mysql \
  --network crm-network \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_DATABASE=crmdb \
  -p 3307:3306 \
  mysql:8.0

echo "MySQL container iniciado."