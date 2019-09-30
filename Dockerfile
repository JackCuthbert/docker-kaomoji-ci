FROM node:10-alpine

# https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.16.248

# https://github.com/serverless/serverless/releases
ENV SERVERLESS_VERSION 1.53.0

# Serverless + AWS CLI dependencies
RUN apk --no-cache update && \
    apk --no-cache add \
        ca-certificates \
        curl \
        git \
        groff \
        jq \
        less \
        py-pip \
        py-setuptools \
        python \
        zip

# Sharp dependencies
RUN apk add vips-dev fftw-dev build-base --update-cache \
    --repository https://alpine.global.ssl.fastly.net/alpine/edge/community/ \
    --repository https://alpine.global.ssl.fastly.net/alpine/edge/main

# Cleanup
RUN rm -rf /var/cache/apk/*

# Install aws-cli
RUN pip --no-cache-dir install awscli==${AWS_CLI_VERSION}

# Serverless framework
RUN npm install -g serverless@${SERVERLESS_VERSION}

WORKDIR /data
