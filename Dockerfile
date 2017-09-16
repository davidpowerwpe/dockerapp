FROM ruby:2.3.1

RUN apt-get update -qq \
 && apt-get install -y \
      build-essential \
      nodejs

WORKDIR ruby-app

COPY ./ ./