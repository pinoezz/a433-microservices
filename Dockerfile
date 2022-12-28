# Menggunakan base image Node.js versi 14x
FROM node:14-alpine

# Menentukan working directory
WORKDIR /app

# Copy all file
COPY . .

# Environment Variable
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Expose port
EXPOSE 8080

# Running App
CMD ["npm", "start"]
