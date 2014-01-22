# ChattDevs

[![Build Status](https://travis-ci.org/spyc3r/chattdevs.png)](https://travis-ci.org/spyc3r/chattdevs)
[![Code Climate](https://codeclimate.com/github/spyc3r/chattdevs.png)](https://codeclimate.com/github/spyc3r/chattdevs)

## About

Chattdevs is a Rails powered, OAuth enabled user directory for all of the
awesome developers in Chattanooga, Tennessee.

## Installation and Technical

The app is currently running on Ruby 2.0 and Rails 4.  Installation is straight
forward:

    $ bundle install
    $ rake db:migrate
    $ foreman start

If you want to seed your database then just run:

    $ rake db:populate

## Running Tests

In order to run the tests you need to prepare you test database:

    $ rake db:test:prepare

### Zeus

We like fast tests so we use zeus to preload our app.  Here's how to use it:

    $ zeus start

This will load your rails environment and allows you to run tests without
loading the environment each time.  You can run this like so:

    $ zeus test spec
    $ zeus test spec/models

Using rspec directly will still work, but it will have to preload the rail
environment and will be slower:

    $ bundle exec rspec spec
    $ bundle exec rspec spec/models

### Guard

Guard is an easy way to get immediate feedback from your tests.  We've
configured it to work with zeus so it should still be fast.  You can just
start guard as you normally would:

    $ bundle exec guard

Now you have immediate feedback.

## Contributing

This project is community driven so if you have an idea or see something that
you would like to change then just fork the repo and submit a pull request.
