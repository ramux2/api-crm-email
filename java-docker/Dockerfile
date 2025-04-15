# Usar a imagem oficial do OpenJDK 17
FROM openjdk:17-jdk-slim

# Diretório onde a aplicação será copiada
WORKDIR /app

# Copiar o arquivo .jar para o container
COPY target/crm-api.jar crm-api.jar

# Comando para rodar a aplicação
CMD ["java", "-jar", "crm-api.jar"]

# Expor a porta que a API Spring Boot vai escutar
EXPOSE 8080
