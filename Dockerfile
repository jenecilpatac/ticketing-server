# Use the Node.js image
FROM node:18

# Set working directory
WORKDIR /app
 

COPY package.json ./

# Install pnpm globally
RUN npm install

# Copy the entire app code
COPY . .

# Expose the port for the application
EXPOSE 7002

# Start the application
CMD ["npm", "run", "start:prod"]
