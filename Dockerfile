# Intentionally old base images: a TrueSource Viewer demo, do not build or deploy.
FROM golang:1.19 AS build
WORKDIR /src
FROM alpine:3.14
WORKDIR /app
CMD ["echo", "This demo is not meant to run."]
