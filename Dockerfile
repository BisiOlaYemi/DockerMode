FROM node:14-alpine

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source code
COPY src/ .

# Specify the command to run your application
CMD ["node", "server.js"]
