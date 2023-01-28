#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install

echo Running db:migrate...
bundle exec rails db:migrate

bundle exec rake assets:precompile
bundle exec rake assets:clean