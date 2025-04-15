#!/bin/bash

# Verificar se o container Spring Boot já está rodando, se sim, sai
if [[ $(docker ps -q -f name=crm-api) ]]; then
  echo "Container Spring Boot (API CRM) já está rodando."
  exit 0
fi

# Build da imagem do Spring Boot
docker build -t crm-api ./crm-api

# Rodar o container Spring Boot
docker run -d \
  --name crm-api \
  --network crm-network \  # Conectar com a rede compartilhada
  -p 8080:8080 \
  crm-api

echo "API CRM (Spring Boot) iniciada."
