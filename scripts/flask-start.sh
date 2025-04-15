#!/bin/bash

# Verificar se o container Flask já está rodando, se sim, sai
if [[ $(docker ps -q -f name=email-api) ]]; then
  echo "Container Flask (API de E-mail) já está rodando."
  exit 0
fi

# Build da imagem do Flask
docker build -t email-api ./email-api

# Rodar o container Flask
docker run -d \
  --name email-api \
  --network crm-network \  # Conectar com a rede compartilhada
  -p 5000:5000 \
  email-api

echo "API de E-mail (Flask) iniciada."
