# Base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files first (for caching layer)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose the port
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
