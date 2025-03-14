 # Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy the rest of the application files to the container
COPY . ./

# Expose port 3000 to be accessible outside the container
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]

