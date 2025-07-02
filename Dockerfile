# Stage 1: Builder
FROM node:18-alpine AS builder

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the app
COPY . .

# Stage 2: Runtime
FROM node:18-alpine

WORKDIR /app

# Copy built files from builder
COPY --from=builder /app ./

EXPOSE 3000

CMD ["npm", "start"]

