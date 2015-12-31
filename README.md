# Repay Music 
![Repay Music](https://pbs.twimg.com/profile_images/581117997986770944/82TUitVE.png)

## Getting Up and Running

#### Requirements
- Ruby 2.2.2+ (Rails 5)
- PostgreSQL

Install gems:
```
$ bundle update
```

Create config file to hold environment variables:
```
$ bundle exec figaro install
```

Add variables to config file:
```ruby
# config/application.yml

db_username: username
```

Create database:
```
$ rails db:create db:schema:load
```

Run server:
```
$ rails s
```
