# docker-kaomoji-ci

![Docker Build Status](https://img.shields.io/docker/build/jckcthbrt/kaomoji-ci.svg)
![Docker Builds](https://img.shields.io/docker/automated/jckcthbrt/kaomoji-ci.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/jckcthbrt/kaomoji-ci.svg)

[View on Docker Hub](https://hub.docker.com/r/jckcthbrt/kaomoji-ci/)

A Docker image based on `node:10-alpine` with all the required software to build [Kaomoji.moe](https://kaomoji.moe/)'s various projects in GitLab's CI pipelines and other Gatsby, Node, or Serverless based projects.

Inspired by:
  * [sekka1/aws-cli-docker](https://github.com/sekka1/aws-cli-docker)
  * [amaysim-au/docker-serverless](https://github.com/amaysim-au/docker-serverless)

## Included Software

* aws-cli
* curl
* gcc (for [sharp](http://sharp.pixelplumbing.com/en/stable/install/))
* git
* libvips (for [sharp](http://sharp.pixelplumbing.com/en/stable/install/))
* node.js
* npm
* serverless
* zip

## Environment

Supported environment variables:

* `AWS_CLI_VERSION`
* `SERVERLESS_VERSION`
* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`
* `AWS_DEFAULT_REGION`
