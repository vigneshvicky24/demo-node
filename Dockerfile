# Use a small Node image
FROM node:18-alpine

WORKDIR /usr/src/app

# Copy package files first for better caching
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Expose port and start
EXPOSE 3000
CMD ["npm", "start"]
