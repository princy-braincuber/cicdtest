FROM node:lts-alpine as build 

WORKDIR /app

COPY package.json .
RUN npm install 
COPY . .
RUN npm run build

FROM nginx
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf 

COPY --from=build /app/build /home/prism/demo-nginx/Dockerize_react_with_ECR_AWS_Fargate/public/index.html




