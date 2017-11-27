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

ENV CHROME_BIN /usr/bin/chromium
