FROM alpine:3.7
RUN apk add --update bash
RUN apk add build-base
WORKDIR /src
ADD opencore /src/opencore
WORKDIR /app
