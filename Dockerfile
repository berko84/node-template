FROM node:14

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the entire project directory into the working directory
COPY . .

# Expose the port on which your application is running
EXPOSE 9000

# Set the command to run your Node.js application
CMD ["npm", "start"]
