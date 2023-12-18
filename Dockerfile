# Fetching the latest node image on alpine linux
FROM node:alpine AS development

# Declaring env
ENV NODE_ENV development

# Set the working directory.
#WORKDIR /app
 
# Copy the package.json file.
#COPY /app/package.json .
 
# Install application dependencies.
RUN npm install
 
# Copy the rest of the application files.
#COPY . .
 COPY . ./ 
# Expose the port.
EXPOSE 3000
 
# Run the application.
CMD [“npm”, “start”]