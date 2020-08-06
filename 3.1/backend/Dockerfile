FROM ubuntu:16.04

WORKDIR /usr/app
COPY backend-example-docker/ .
ENV FRONT_URL=http://localhost:5000
RUN apt update \
  && apt install -y curl \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash \
  && curl -sfL https://install.goreleaser.com/github.com/tj/node-prune.sh | bash -s -- -b /usr/local/bin \
  && apt install -y nodejs \
  && node -v \
  && npm -v \
  && apt-get purge -y --auto-remove curl \
  && rm -rf /var/lib/apt/lists/* \
  && npm install \
  && /usr/local/bin/node-prune
EXPOSE 8000
CMD npm start