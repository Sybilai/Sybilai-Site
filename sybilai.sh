sudo kill -s SIGTERM `pidof ruby`
RAILS_ENV=production rake db:migrate
RAILS_ENV=production rake assets:precompile
bundle exec puma -e production -b unix:///tmp/sybilai.sock -d
