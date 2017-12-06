FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y rubygems-integration inotify-tools
RUN gem install sass -v 3.3.14
