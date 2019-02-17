FROM node:8.12.0-alpine AS builder
LABEL maintainer="olgierd@kasprowicz.pro"
WORKDIR /svc

RUN apk add --no-cache make

# separated node_modules from build to inflate the cache and speed up rebuilds
COPY Makefile package.json yarn.lock /svc/
RUN make node_modules

COPY . /svc/
RUN make build

FROM nginx:alpine
COPY --from=builder /svc/dist /usr/share/nginx/html
