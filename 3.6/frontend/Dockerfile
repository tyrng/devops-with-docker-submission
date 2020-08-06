FROM node:14-alpine3.10 as build-stage

WORKDIR /usr/app
COPY frontend-example-docker/ .
ENV API_URL=http://localhost/api
RUN npm install \
  && npm run build

FROM nginx:1.19-alpine
COPY --from=build-stage /usr/app/dist /usr/share/nginx/html