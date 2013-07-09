# Voupe Short

A Ruby on Rails application for creating and managing short URLs for many applications/domains.

##Getting Started

Exceptions has been testing on Ruby 1.9.3.

Copy the `database.yml` for your setup. For SQLite3, `cp config/database.yml.sqlite3 config/database.yml` and for MySQL `cp config/database.yml.mysql config/database.yml` and update for your username/password.

If you're going to use SQLite3, the `sqlite3` gem will need to be added to the Gemfile.

This isn't required in development but highly recommened for production. Run `rake secret` and copy what it gives you and replace whatever is next to `VoupeShort::Application.config.secret_token = ` in `config/initializers/secret_token.rb`.

* bundle install
* rake db:create
* rake db:migrate
* rake db:seed

Once everything is setup, start up the server with `rails server` and direct your web browser to [localhost:3000](http://localhost:3000). Login with the default email of `test@test.com` and the password `password`.

## Contributing

Fork this project, make any changes and create a pull request :)

## Licence

This project is licensed under the [☺ Licence](http://licence.visualidiot.com/).