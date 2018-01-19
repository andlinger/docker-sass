FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install -y rubygems rubygems-integration ruby-all-dev build-essential python-pip jq \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/cache/oracle-jdk8-installer

RUN gem install sass -v 3.5.3
RUN pip install yq
