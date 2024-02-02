# Use an official Node runtime as a parent image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Clone the WhatsApp clone repository from GitHub
RUN apk add --no-cache git \
    && git clone https://github.com/FortressTechnologiesInc/whatsapp-clone.git .

# Install dependencies using npm and yarn
RUN npm install -g yarn \
    && yarn install

# Expose the port that the application will run on
EXPOSE 3000

# Define the command to run the application
CMD ["yarn", "start"]
