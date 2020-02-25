# Repay Music 

[![Travis CI](https://api.travis-ci.org/Jelkster/repay_music.svg)](https://travis-ci.org/Jelkster/repay_music)
[![Join the chat at https://gitter.im/Jelkster/repay_music](https://badges.gitter.im/Jelkster/repay_music.svg)](https://gitter.im/Jelkster/repay_music?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Slack Status](https://repaymusic-slack.herokuapp.com/badge.svg)](https://repaymusic-slack.herokuapp.com)


![Repay Music](https://pbs.twimg.com/profile_images/581117997986770944/82TUitVE.png)

## Getting Started

#### Requirements
- Ruby 2.7.0
- PostgreSQL 12

Install gems:
```
$ bundle install
```

Run `rails credentials:edit` and add the following credentials:
```yaml
db_username: <username>
test_db: <dbname>
base_url: <http://localhost:3000>
```

Setup database:
```
$ rails db:create
$ rails db:schema:load
$ rails db:seed
```

Run server:
```
$ rails s
```

## Contributing

0. Fork it
1. Create your feature branch (`git checkout -b my-new-feature`)
2. Commit your changes (`git commit -am 'Add some feature'`)
3. Push to the branch (`git push origin my-new-feature`)
4. Create a new Pull Request
