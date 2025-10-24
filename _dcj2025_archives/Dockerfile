FROM ruby:3.4.4

WORKDIR /src
ENTRYPOINT bundle install && bundle exec jekyll serve \
  --host 0.0.0.0 --config _config.yml
