#
# Ubuntu Node.js Dockerfile
#
# https://github.com/dockerfile/ubuntu/blob/master/Dockerfile
# https://docs.docker.com/examples/nodejs_web_app/
#

# Pull base image.
FROM ubuntu:18.04

# Work directory
WORKDIR /usr/src/app

# Create user
# RUN useradd --user-group --create-home --shell /bin/false app

# Install Node.js
RUN apt-get update
RUN apt-get install --yes curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install --yes build-essential
RUN apt-get install --yes git
RUN apt-get install --yes nano
RUN apt-get install --yes lynx
RUN apt-get install --yes iproute2
RUN apt-get install --yes apt-utils

# Binds to port 8080
EXPOSE 3000
