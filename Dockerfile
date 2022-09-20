FROM node:lts-alpine as build 

WORKDIR /app

COPY package.json .
RUN npm install 
COPY . .
RUN npm run build
RUN sudo systemctl restart nginx
FROM nginx
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf 

COPY --from=build /app/build /home/prism/Desktop/cicdtest/build/index.html




