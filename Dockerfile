FROM paulsturgess/ruby_phantomjs:latest

ADD Gemfile /app/Gemfile
ADD Gemfile /app/Gemfile.lock

RUN bundle install
