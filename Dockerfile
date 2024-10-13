# 1. Usa una imagen oficial de Node.js como base
FROM node:16

# 2. Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copia los archivos package.json y package-lock.json al contenedor
COPY package*.json ./

# 4. Instala las dependencias de la aplicación
RUN npm install

# 5. Copia el resto del código de la aplicación en el contenedor
COPY . .

# 6. Expone el puerto que usará la aplicación (opcional si no tienes un servidor HTTP)
EXPOSE 3000

# 7. Define el comando por defecto para ejecutar tu aplicación
CMD ["node", "index.js"]
