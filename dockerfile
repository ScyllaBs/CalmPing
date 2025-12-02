# 1. Image de base
FROM node:20-alpine

# 2. Répertoire de travail dans le container
WORKDIR /app

# 3. Copier package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# 4. Installer les dépendances
RUN npm install --production

# 5. Copier le reste du code
COPY . .

# 6. Définir le port (Koyeb passe le port via la variable d'environnement PORT)
ENV PORT 8000

# 7. Exposer le port pour la plateforme
EXPOSE 8000

# 8. Lancer l'application
# Assure-toi que ton fichier principal s'appelle index.js ou adapte-le
CMD ["node", "index.js"]
