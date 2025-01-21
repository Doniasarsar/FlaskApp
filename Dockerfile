# Utiliser une image Python légère comme base
FROM python:3.9-slim

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier les fichiers requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances nécessaires
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le code de l'application dans le conteneur
COPY . .

# Exposer le port 5001 pour que l'application Flask soit accessible
EXPOSE 5001

# Spécifier la commande pour exécuter l'application Flask
CMD ["python", "app.py"]
