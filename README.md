##Jaclyn-Pablo Wedding App

-Wedding-App is a Rails app that provides guests information for the big day in a beautiful way. 

###User Story
- User can RSVP to the wedding party
- User can access wedding ceremony and reception location and lodging information
- User can purchase gift for the couple through wedding gift registries
- User can contribute money towards honeymoon fund by using Stripe integration

*System Requirements
- Ruby 4.0 
- Rail, '4.2.3'

-postgres database must be installed

*Configuration

`$ bundle install`

Important gems to include your Gemfile:

`gem 'stripe-rails`

- Run a migration
`$ bundle exec rake db:create`
`$ bundle exec rake db:migrate`
`$ bundle exec rake db:seed`

###Setting up Stripe

You will need to have a Stripe account and have your API key. 

There are a few ways to setup Stripe. [Check out their docs.](https://stripe.com/docs/stripe.js)

###Run the App
`$ rails s`

- localhost:3000

##Testing 

##In the Future
- add MC tests
- send email on RSVP to add event to calendar
- update layout of honeymoon fund to show visualization towards total amount gifted / remaining


