FROM ubuntu:16.04

WORKDIR /usr/app
RUN apt update \
  && apt install -y curl \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash \
  && apt install -y nodejs
RUN node -v \
  && npm -v
COPY backend-example-docker/ .
RUN npm install
EXPOSE 8000
CMD FRONT_URL=http://localhost:5000 npm start
