# Use an official Node.js base image (version 16)
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy all other application files into the container
COPY . .

# Expose port 3000 to allow external access to the app
EXPOSE 3000

# Start the application using npm
CMD ["npm", "start"]
