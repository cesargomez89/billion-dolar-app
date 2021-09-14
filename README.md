# README

## Dependencies

Ruby version: 2.7.1
Rails: 6.0.4.1
Database: Postgres 12.5

## Setup

```
bundle install
rails db:create
rails db:migrate
rails posts:update
rails s
```

If you want to run the cron jobs at production

```
whenever --update-crontab
```

## Testing

```
rails test
```
