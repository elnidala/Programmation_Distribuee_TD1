# Utiliser une image de base Python officielle
FROM python:3.8-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le script Python dans le conteneur
COPY test.py .

# Installer Flask
RUN pip install Flask

# Exposer le port 5000
EXPOSE 8080

# Commande pour exécuter le script Python lors du démarrage du conteneur
CMD ["python", "./test.py"]
