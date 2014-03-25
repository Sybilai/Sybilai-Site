sudo kill -s SIGTERM `pidof ruby`
RAILS_ENV=productuin rake assets:precompile
bundle exec puma -e production -b unix:///tmp/sybilai.sock -d
