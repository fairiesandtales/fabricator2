FROM ruby:alpine

RUN apk add --no-cache --update build-base postgresql-dev tzdata

ENV APP_PATH /app
WORKDIR $APP_PATH

RUN adduser -D fabricator
USER fabricator

COPY Gemfile* $APP_PATH/

RUN bundle install --jobs `expr $(cat /proc/cpuinfo | grep -c "cpu cores") - 1` --retry 3

COPY . $APP_PATH

CMD puma
