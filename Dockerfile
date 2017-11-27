FROM node:8

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y --no-install-recommends \
    chromium \
    libgconf-2-4 \
    lftp \
    rsync \
    git \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

# https://github.com/nodejs/docker-node/blob/bf84a38aeacb4f6aad34e07c79fd3a0084da5cd2/docs/BestPractices.md#global-npm-dependencies
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV CHROME_BIN /usr/bin/chromium

USER node
