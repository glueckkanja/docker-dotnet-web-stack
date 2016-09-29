FROM microsoft/dotnet:1.0.0-preview2-sdk

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - \
 && apt-get update \
 && apt-get install -y \
  git \
  build-essential \
  nodejs \
 && rm -rf /var/lib/apt/lists/*

RUN npm install -g bower gulp-cli azure-cli typescript \
 && npm cache clean -g \
 && echo '{ "allow_root": true }' > /root/.bowerrc
