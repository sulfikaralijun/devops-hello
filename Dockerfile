# Gunakan base image Node.js
FROM node:22.16.0-alpine

# Buat folder kerja di dalam container
WORKDIR /app

# Salin file package.json & package-lock.json (kalau ada)
COPY package*.json ./

# Install pnpm globally
RUN corepack enable && corepack prepare pnpm@latest --activate

# Install dependencies
RUN pnpm install

# Salin semua file proyek ke dalam container
COPY . .

# Expose port yang digunakan oleh app
EXPOSE 3000

# Perintah untuk menjalankan app
CMD ["pnpm", "start"]
