FROM ruby:2.3.1

RUN apt-get update -qq \
 && apt-get install -y \
      build-essential \
      nodejs \

COPY . .
RUN bundle install --jobs 3