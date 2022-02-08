FROM ruby:3.1.0

ENV BUNDLE_VERSION 2.3.3
ENV APP /usr/src/app

# netcat is for nc command
RUN apt update && apt install -y netcat && apt install -y vim
RUN gem install bundler --version "$BUNDLE_VERSION" 

RUN mkdir $APP
WORKDIR $APP

COPY /backend/Gemfile* $APP/
RUN bundle install

COPY . $APP/

CMD ["./bin/server-dev"]
