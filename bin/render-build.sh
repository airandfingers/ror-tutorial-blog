#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean

# Using a Free instance type, so perform database migrations in the build command.

bundle exec rails db:migrate