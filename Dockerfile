FROM node:8-alpine

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.16.54
RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less zip && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/*
    
WORKDIR /data