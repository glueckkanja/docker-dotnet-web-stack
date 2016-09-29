FROM microsoft/dotnet:1.0.0-preview2-sdk

ENV npm_config_color=false

RUN apt-get update && apt-get install -y \
  git \
  nodejs \
  npm \
 && ln -s /usr/bin/nodejs /usr/bin/node \
 && rm -rf /var/lib/apt/lists/*

RUN npm install -g bower gulp-cli azure-cli typescript \
 && npm cache clean -g
