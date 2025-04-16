# Projeto CRM + API de E-mail com Docker

Este projeto simula um sistema de CRM que dispara campanhas de e-mail usando duas APIs independentes:

- **API CRM**: Desenvolvida em Python com Flask, responsável por gerenciar campanhas e consumidores.
- **API de E-mail**: Desenvolvida em Python com Flask, responsável por enviar e-mails.

## 🛠️ Como Rodar os Containers

### 1. Criar rede Docker compartilhada (uma única vez)

```bash
docker network create crm-network
```

### 2. Build da API do CRM

```bash
docker build -t crm-api
```
### 3. Build da API do envio de email

```bash
docker build -t email-api
```
### 4. Rodar a API do CRM

```bash
docker run -p 3000:3000 --network crm-network --name crm-api-container crm-api
```
### 5. Rodar a API do Email

```bash
docker run -p 5000:5000 --network crm-network --name email-api-container email-api
```


