# Repay Music 

[![Travis CI](https://api.travis-ci.org/Jelkster/repay_music.svg)](https://travis-ci.org/Jelkster/repay_music)
[![Join the chat at https://gitter.im/Jelkster/repay_music](https://badges.gitter.im/Jelkster/repay_music.svg)](https://gitter.im/Jelkster/repay_music?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Slack Status](https://repaymusic-slack.herokuapp.com/badge.svg)](https://repaymusic-slack.herokuapp.com)


![Repay Music](https://pbs.twimg.com/profile_images/581117997986770944/82TUitVE.png)

## Getting Started

#### Requirements
- Ruby 2.3.0+
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
test_db: repay_music_test
```

Create database:
```
$ rails db:create db:schema:load
```

Run server:
```
$ rails s
```

## Contributing

0. [Fork it](https://github.com/Jelkster/repay_music/fork)
1. Create your feature branch (`git checkout -b my-new-feature`)
2. Commit your changes (`git commit -am 'Add some feature'`)
3. Push to the branch (`git push origin my-new-feature`)
4. Create a new Pull Request
