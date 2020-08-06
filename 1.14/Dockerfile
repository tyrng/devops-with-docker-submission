FROM ruby:2.6.0

WORKDIR /usr/app
# in my machine I created a .dockerignore file with "**/credentials.yml.enc" so that new credentials can be created
COPY rails-example-project/. .
# alternatively I could also do like below, but it takes one extra layer
# RUN rm config/credentials.yml.enc
RUN bundle install
RUN apt update \
  && apt install -y curl apt-transport-https apt-utils \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash \
  && apt update \
  && apt install -y nodejs yarn
RUN EDITOR="mate --wait" bin/rails credentials:edit
RUN rails db:migrate RAILS_ENV=production
RUN rake assets:precompile
EXPOSE 3000
CMD RAILS_LOG_TO_STDOUT=true rails s -e production
