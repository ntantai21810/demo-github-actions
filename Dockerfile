FROM node
WORKDIR /usr/app/src
COPY . .
RUN yarn
RUN yarn build
EXPOSE 3000
CMD [ "yarn", "start" ]