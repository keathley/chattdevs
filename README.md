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
    
Now you should be good to go.

## Running Tests

In order to run the tests you need to prepare you test database:

   $ rake db:test:prepare

## Contributing

This project is community driven so if you have an idea or see something that
you would like to change then just fork the repo and submit a pull request.
