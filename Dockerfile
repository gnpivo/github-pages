FROM ruby:2.7.4-alpine

WORKDIR /usr/src/app

COPY Gemfile ./
RUN apk --no-cache add build-base && bundle install && apk del build-base

COPY serve.sh ./
RUN chmod +x serve.sh

ENTRYPOINT ["sh", "./serve.sh"]
