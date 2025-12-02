# Utilise une image Nginx (serveur web)
FROM nginx:alpine

# Supprime la page par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copie ton index.html dans le serveur
COPY index.html /usr/share/nginx/html/index.html

# Expose le port 80 pour Koyeb
EXPOSE 80

# Démarre le serveur automatiquement
CMD ["nginx", "-g", "daemon off;"]
