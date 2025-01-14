# Usa una imagen base de Node.js
FROM node:18

# Instalar python3 y ffmpeg
RUN apt-get update && apt-get install -y python3 ffmpeg

# Crear directorio de la aplicación
WORKDIR /app

# Copiar archivos del proyecto
COPY package*.json ./
RUN npm install
COPY . .

# Exponer el puerto que utiliza la aplicación
EXPOSE 3000

# Comando para correr la aplicación
CMD ["node", "server.js"]
