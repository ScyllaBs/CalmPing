FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

# Définir le port pour Koyeb
ENV PORT 8000
EXPOSE 8000

CMD ["node", "index.js"]
const express = require('express');
const app = express();

app.get('/', (req, res) => res.send('Hello Koyeb!'));

const PORT = process.env.PORT || 8000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
{
  "name": "koyeb-app",
  "version": "1.0.0",
  "main": "index.js",
  "scripts": {
    "start": "node index.js"
  },
  "dependencies": {
    "express": "^4.18.2"
  }
}
