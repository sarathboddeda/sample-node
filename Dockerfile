# Use the official Node.js image
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Expose port and run the application
EXPOSE 3000
CMD [ "node", "app.js" ]
