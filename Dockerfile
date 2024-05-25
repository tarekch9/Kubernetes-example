FROM node:14

# Erstelle ein Arbeitsverzeichnis
WORKDIR /usr/src/app

# Kopiere package.json und package-lock.json
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den Rest der Anwendung
COPY . .

# Exponiere Port 3000
EXPOSE 3000

# Starte die Anwendung
CMD ["npm", "start"]
