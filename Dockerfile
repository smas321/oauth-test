# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application code
COPY . .

# Expose port 4200
EXPOSE 4200

# Start the React development server
CMD ["yarn", "start"]

