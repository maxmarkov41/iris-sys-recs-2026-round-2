#!/bin/sh

set -e # fail fast, i.e if a variable is null, don't treat it as an empty string, throw error and exit

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid # rails creates a pid file to state the it's online? if the container is abruptly stopped and restarted, the application will complain that an instance of the application is already running
fi

bundle exec rails s -b 0.0.0.0