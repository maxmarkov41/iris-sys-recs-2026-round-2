FROM ruby:3.4.1
# to reduce space
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
EXPOSE 3000
ENTRYPOINT ["./entrypoint.sh"]