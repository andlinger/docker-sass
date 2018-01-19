FROM ubuntu:16.04

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - \
  && apt-get update \
  && apt-get install -y rubygems rubygems-integration ruby-all-dev build-essential python-pip jq nodejs \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/cache/oracle-jdk8-installer

RUN gem install sass -v 3.5.3
RUN pip install yq
RUN npm install -g svgo
