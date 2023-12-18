# Fetching the latest node image on alpine linux
FROM node:alpine AS development

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /react_demo

# Installing dependencies
COPY ./package*.json /react_demo

RUN npm install

# Copying all the files in our project
COPY . .

# Expose port 3000, will use reverse proxy
EXPOSE 3000

# Starting our application
CMD ["npm","start]