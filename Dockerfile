# Étape 1 : Choisir une image de base Java 17 (compatible avec ton projet)
FROM eclipse-temurin:17-jdk-jammy

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier le JAR généré par Maven dans le conteneur
# IMPORTANT : Vérifie bien que le nom du fichier correspond exactement à ce qui est dans ton dossier target
COPY target/springboot-docker-app-0.0.1-SNAPSHOT.jar app.jar

# Étape 4 : Exposer le port de l’application
# J'ai mis 9090 car c'est ce que tu as configuré dans application.properties
EXPOSE 9090

# Étape 5 : Lancer l’application
ENTRYPOINT ["java", "-jar", "app.jar"]