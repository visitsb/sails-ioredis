FROM ubuntu

RUN apt-get update \
  && apt-get install -y python redis-server wget build-essential git

ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 12.5.0
RUN wget "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" \
  && tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 \
  && rm "node-v$NODE_VERSION-linux-x64.tar.gz" \
  && ln -s /usr/local/bin/node /usr/local/bin/nodejs
