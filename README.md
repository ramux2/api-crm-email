# Projeto CRM + API de E-mail com Docker

Este projeto simula um sistema de CRM que dispara campanhas de e-mail usando duas APIs independentes:

- **API CRM**: Desenvolvida em Java com Spring Boot, responsável por gerenciar campanhas e consumidores.
- **API de E-mail**: Desenvolvida em Python com Flask, responsável por enviar e-mails.
- **Banco de Dados**: MySQL para persistência de dados.

Todos os serviços são executados utilizando **Docker** com **Dockerfiles** e **scripts Bash** para automatizar o processo de criação e execução dos containers.

## 🚀 Tecnologias Utilizadas

- **Java 17 + Spring Boot**
- **Python 3.9 + Flask**
- **MySQL 5.7**
- **Docker**
- **Bash Scripts**

## 🧱 Pré-requisitos

- Docker instalado e funcionando
- Java 17 para build da aplicação Spring
- Maven para build da API CRM
- Python 3.9 (apenas se quiser rodar a API de e-mail localmente fora do Docker)

## 🛠️ Como Rodar os Containers

### 1. Criar rede Docker compartilhada (uma única vez)

```bash
docker network create crm-network
