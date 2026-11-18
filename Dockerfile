FROM ruby:3.4.12

WORKDIR /src

CMD ["/bin/bash", "-c", "bundle install && bundle exec jekyll serve --host 0.0.0.0 --config _config.yml"]
