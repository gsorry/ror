# Ruby On Rails Example

This describe all steps necessary to get the application up and running.

## Ruby version

- ruby 2.7.1
- rails 6.0.3.1

## System dependencies

- sqlite3
- imagemagick
- redis

## Configuration

Edit `config/environments/development.rb` and change redis servers if needed:
```
cache_servers = %w(redis://localhost:6308/0)
```

Toggle cache on/off for development environment: 
```
rails dev:cache
```

Edit `app/mailers/application_mailer.rb` and `config/initializers/devise.rb` and change default from and sender email address:
TODO: Put this address to environment variable and change config files!

## Database creation

Run migrations:
```
rails db:migrate
```

## Database initialization

Run seeder:
```
rake db:seed
```

## How to run the test suite

TODO: Cover everithing with tests!

## Services (job queues, cache servers, search engines, etc.)

Run delayed jobs:
```
rake jobs:work
```

## Deployment instructions

To run application in development environment just start built in server:
```
rails server
```

IMPORTANT: Configuration for production environment is not configured!
