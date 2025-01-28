# # Use Node.js base image
# FROM node:18-alpine

# # Set working directory
# WORKDIR /app

# # Copy package.json and package-lock.json
# COPY package*.json ./

# # Ensure sharp uses prebuilt binaries
# ENV SHARP_IGNORE_GLOBAL_LIBVIPS=1

# # Install other required dependencies
# RUN apk add --no-cache libc6-compat curl

# # Install Node.js dependencies
# RUN npm install --legacy-peer-deps

# # Copy the rest of the application
# COPY . .

# # Expose port and start the application
# EXPOSE 1337
# CMD ["npm", "start"]


FROM strapi/strapi:latest

WORKDIR /app

# Menyalin semua file dari proyek ke dalam kontainer
COPY . .

# Menginstal dependensi
RUN npm install

# Membangun bagian admin
RUN npm run build

# Menjalankan aplikasi Strapi
CMD ["npm", "start"]



