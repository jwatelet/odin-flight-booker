# Odin Flight Booker

## Assignment

We’ll be creating a one-way flight booker. You’ll get lots of practice populating and building dropdown menus, radio buttons, and nested submissions. Let the fun begin!

This project will require you to seed your database, so use your db/seeds.rb file to write the code necessary to populate Airports and Flights. One trick for toy apps like this (don’t do it for production!) is to use the `db:seed:replant` task for simultaneously clearing the database and running your seeds file. That way, when you create a new model or change how you want your sample data set up, you can just update the seeds.rb file and run $ rake `db:seed:replant` to have a clean slate of data.

### A typical airline booking flow:

  1. Enter desired dates / airports and click “Search”
  2. Choose from among a list of available flights
  3. Enter passenger information for all passengers
  4.  Enter billing information

### Getting started

- Clone this repo
- install ruby (3.2.3)
- install all gems:  `bundle install`
- migrate the database : `rails db:migrate`
- seed the database, (`seed.rb` to check what it's done): `rails db:seed:plant`
- launch server : `rails s`

### Comments

I used turbo frames to add passengers to the booking nested form.


Made for [the odin project](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker)