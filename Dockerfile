# Use a base image appropriate for your application, for example, Node.js
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port that the app runs on (if applicable)
EXPOSE 3000

# Define the command to start your application
CMD ["npm", "start"]

