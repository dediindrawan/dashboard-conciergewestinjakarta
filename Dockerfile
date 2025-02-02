# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Ensure sharp uses prebuilt binaries
ENV SHARP_IGNORE_GLOBAL_LIBVIPS=1

# Install other required dependencies
RUN apk add --no-cache libc6-compat curl

# Install Node.js dependencies
RUN npm install --legacy-peer-deps

# Copy the rest of the application
COPY . .

# Expose port and start the application
EXPOSE 1337
CMD ["npm", "start"]


# FROM strapi/strapi:latest

# WORKDIR /app

# # Menyalin semua file dari proyek ke dalam kontainer
# COPY . .

# # Menginstal dependensi
# RUN npm install

# # Membangun bagian admin
# RUN npm run build

# # Menjalankan aplikasi Strapi
# CMD ["npm", "start"]





# FROM strapi/strapi:latest

# # Set the working directory
# WORKDIR /app

# # Copy your project files
# COPY . .

# RUN chown -R node:node /app


# # Install dependencies
# RUN npm install

# # Build the admin panel
# RUN npm run build

# # Expose the application port
# EXPOSE 1337

# # Start the Strapi application
# CMD ["npm", "start"]


# FROM strapi/strapi:latest

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the package.json and package-lock.json first
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of the application files
# COPY . .

# # Build the admin panel
# RUN npm run build

# # Expose the port
# EXPOSE 1337

# # Start the app
# CMD ["npm", "start"]


# # Use the official Strapi image as the base
# FROM strapi/strapi:latest

# # Set the working directory inside the container
# WORKDIR /app

# # Copy package.json and package-lock.json (if exists)
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of your application code
# COPY . .

# # Expose the Strapi port
# EXPOSE 1337

# # Run Strapi
# CMD ["npm", "start"]
