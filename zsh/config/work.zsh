# Work config
if [ "$DOT13_ENV" = 'work' ]; then
  ln -sf "$HOME/dot13/work/.gitconfig_vinted" "$HOME/.gitconfig"

  alias b='bundle exec'
  alias s='spring'
  alias bs='bundle exec spring'

  alias test_reset='RAILS_ENV=test bundle exec rake db:drop db:create db:structure:load'
  alias test_migrate='RAILS_ENV=test bundle exec rake db:migrate'

  alias lt_reset='bundle exec rake db:drop db:create db:structure:load db:seed'
  alias lt_console='script/console'
  alias lt_server='script/server'
  alias lt_migrate='bundle exec rake db:migrate'
  alias lt_images='script/rails s thin --port=3010'
  alias lt_ts_rebuild='bundle exec rake ts:rebuild'

  alias de_reset='COUNTRY=de bundle exec rake db:drop db:create db:structure:load db:seed'
  alias de_console='COUNTRY=de script/console'
  alias de_server='COUNTRY=de script/server'
  alias de_migrate='COUNTRY=de bundle exec rake db:migrate'
  alias de_images='COUNTRY=de script/rails s thin --port=3011'
  alias de_ts_rebuild='COUNTRY=de bundle exec rake ts:rebuild'

  alias fr_reset='COUNTRY=fr bundle exec rake db:drop db:create db:structure:load db:seed'
  alias fr_console='COUNTRY=fr script/console'
  alias fr_server='COUNTRY=fr script/server'
  alias fr_migrate='COUNTRY=fr bundle exec rake db:migrate'
  alias fr_images='COUNTRY=fr script/rails s thin --port=3012'
  alias fr_ts_rebuild='COUNTRY=fr bundle exec rake ts:rebuild'

  alias uk_reset='COUNTRY=uk bundle exec rake db:drop db:create db:structure:load db:seed'
  alias uk_console='COUNTRY=uk script/console'
  alias uk_server='COUNTRY=uk script/server'
  alias uk_migrate='COUNTRY=uk bundle exec rake db:migrate'
  alias uk_images='COUNTRY=uk script/rails s thin --port=3013'
  alias uk_ts_rebuild='COUNTRY=uk bundle exec rake ts:rebuild'

  alias us_reset='COUNTRY=us bundle exec rake db:drop db:create db:structure:load db:seed'
  alias us_console='COUNTRY=us script/console'
  alias us_server='COUNTRY=us script/server'
  alias us_migrate='COUNTRY=us bundle exec rake db:migrate'
  alias us_images='COUNTRY=us script/rails s thin --port=3014'
  alias us_ts_rebuild='COUNTRY=us bundle exec rake ts:rebuild'
fi
