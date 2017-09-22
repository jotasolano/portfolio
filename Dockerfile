FROM node:alpine
LABEL name "carcruzcast-site"

RUN mkdir /app
WORKDIR /app

COPY package.json /app
COPY yarn.lock /app
RUN yarn --prod

COPY server.js /app
COPY client /app/client

EXPOSE 5000

CMD ["yarn", "start"]

# RUN cd client && yarn --production=false && yarn run build
