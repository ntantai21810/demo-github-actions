# ReactJS
FROM node AS build
WORKDIR /usr/app/src
COPY . .
RUN yarn
RUN yarn build
# Nginx
FROM nginx
COPY --from=build /usr/app/src/nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/app/src/dist /usr/share/nginx/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]