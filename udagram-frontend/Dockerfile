## Build
 FROM node:14.15.5-alpine3.13 as build
 # Create app directory
 WORKDIR /usr/src/app
 # Install app dependencies
 # A wildcard is used to ensure both package.json AND package-lock.json are copied
 COPY package*.json ./
 RUN npm ci
 RUN npm install -g @ionic/cli
 # Bundle app source
 COPY . .
 RUN ionic build
 ## Run
 FROM nginx:alpine
 #COPY www /usr/share/nginx/html
 COPY --from=build /usr/src/app/www /usr/share/nginx/html

### OLD Dockerfile ###

#  ## Build
# FROM beevelop/ionic:latest AS ionic
# # Create app directory
# WORKDIR /usr/src/app
# # Install app dependencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# COPY package*.json ./
# RUN npm ci
# # Bundle app source
# COPY . .
# RUN ionic build
# ## Run 
# FROM nginx:alpine
# #COPY www /usr/share/nginx/html
# COPY --from=ionic  /usr/src/app/www /usr/share/nginx/html


