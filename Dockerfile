FROM node
WORKDIR /usr/app/src
COPY . .
RUN yarn
RUN yarn build
EXPOSE 8000