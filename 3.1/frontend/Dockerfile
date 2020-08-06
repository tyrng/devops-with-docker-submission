FROM ubuntu:16.04

WORKDIR /usr/app
COPY frontend-example-docker/ .
ENV API_URL=http://localhost/api
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
  && npm install -g serve \
  && npm run build \
  && npm prune --production \
  && /usr/local/bin/node-prune
EXPOSE 5000
CMD ["serve", "-s", "-l", "5000", "dist"]
