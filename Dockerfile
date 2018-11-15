FROM node:8-alpine

# https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.16.54

# https://github.com/serverless/serverless/releases
ENV SERVERLESS_VERSION 1.30.3

# Dependencies
RUN apk --no-cache update && \
    apk --no-cache add \
        ca-certificates \
        curl \
        git \
        groff \
        less \
        py-pip \
        py-setuptools \
        python \
        zip

# Cleanup
RUN rm -rf /var/cache/apk/*

# Install aws-cli
RUN pip --no-cache-dir install awscli==${AWS_CLI_VERSION}

# Serverless framework
RUN npm install -g serverless@${SERVERLESS_VERSION}

WORKDIR /data
