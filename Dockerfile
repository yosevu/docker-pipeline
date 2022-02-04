# Get node image from Docker Hub
FROM node:17-alpine3.14

# Create app directory
WORKDIR /usr/app/src

# Copy package.json and package-lock.json
COPY package*.json ./

# Install node dependencies
RUN npm install

# Copy project files to container
COPY . .

EXPOSE 5000

RUN npm run build

# CMD [ "npm", "run", "build" ]

# RUN npm start
