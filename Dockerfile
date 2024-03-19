# Use the official Node.js 14 image as the base image
FROM node:18.14.1

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Astro.js project
RUN npm run build

# Expose port 4321 to the outside world
EXPOSE 4321

# Command to run the application
CMD ["npm", "start"]
