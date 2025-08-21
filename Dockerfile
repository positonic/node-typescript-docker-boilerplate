FROM node:22-alpine

WORKDIR /app

# Copy package files first (for better Docker layer caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Start development server
CMD ["npm", "run", "dev"]