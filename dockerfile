FROM ubuntu

# Update package list and install curl
RUN apt-get update && apt-get install -y curl

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs

# Upgrade all packages
RUN apt-get upgrade -y

# Copy application files
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js

# Install npm dependencies
RUN npm install

# Set the entry point to run the application
ENTRYPOINT ["node", "main.js"]

