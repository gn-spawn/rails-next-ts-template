#!/bin/bash -i

bundle exec rails db:migrate 2>/dev/null || bundle exec rails db:create db:migrate db:seed
bundle exec puma -C config/puma.rb -e production
