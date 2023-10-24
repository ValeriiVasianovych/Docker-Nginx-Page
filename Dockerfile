# Install node from the official image as the build environment
FROM node:12 as build
# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json from the host to the image for caching and install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's source code from the host to the image
COPY . .

# Build the app and output the build to /app/build
RUN npm run build

# Install nginx from the official image
FROM nginx:latest

# Copy the build output to replace the default nginx contents
COPY --from=build /app/dist /usr/share/nginx/html

# Port 80 is the default port for HTTP traffic
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
