FROM node:14-alpine3.10

WORKDIR /usr/app
COPY frontend-example-docker/ .
ENV API_URL=http://localhost/api
RUN npm install \
  && npm install -g serve \
  && npm run build \
  && npm prune --production \
  && chown -R node .
EXPOSE 5000
USER node
CMD ["serve", "-s", "-l", "5000", "dist"]
