repo_uri = "https://raw.github.com/uniqrn/rails-template/master"
gem 'puma'

# data store
gem 'pg'
gem 'redis-rails'
gem 'ridgepole'
comment_lines 'Gemfile', "gem 'sqlite3'"

gem 'pry-rails'
comment_lines 'Gemfile', "gem 'coffee-rails'"
uncomment_lines 'Gemfile', "gem 'therubyracer'"
uncomment_lines 'Gemfile', "gem 'redis'"

run "bundle install"

get "#{repo_uri}/initializers/i18n.rb", 'config/initializers/i18n.rb'

