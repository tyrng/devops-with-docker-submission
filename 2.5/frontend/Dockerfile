FROM ubuntu:16.04

WORKDIR /usr/app
RUN apt update \
  && apt install -y curl \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash \
  && apt install -y nodejs
RUN node -v \
  && npm -v
COPY frontend-example-docker/ .
RUN npm install
RUN API_URL=http://localhost:8000 npm run build
RUN npm install -g serve
EXPOSE 5000
CMD ["serve", "-s", "-l", "5000", "dist"]
