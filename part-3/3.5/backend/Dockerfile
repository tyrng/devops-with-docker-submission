FROM node:14-alpine3.10

WORKDIR /usr/app
COPY backend-example-docker/ .
ENV FRONT_URL=http://localhost:5000
RUN npm install \
  && chown -R node .
EXPOSE 8000
USER node
CMD npm start