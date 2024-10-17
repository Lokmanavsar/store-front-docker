# Base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Set environment variables for the service URLs
ENV ORDER_SERVICE_URL=https://order-service.fake.net/
ENV PRODUCT_SERVICE_URL=https://product-service.fake.net/

# Expose the port the app runs on
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
