FROM node:12.14.1-alpine3.9

RUN node --version

FROM python:3.8.1-alpine3.10

RUN python --version

FROM scratch

ARG BRANCH=local
ARG VERSION=latest

LABEL branch=$BRANCH
LABEL version=$VERSION
