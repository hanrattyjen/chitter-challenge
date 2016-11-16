[![Coverage Status](https://coveralls.io/repos/github/makersacademy/chitter-challenge/badge.svg)](https://coveralls.io/github/makersacademy/chitter-challenge)

### Chitter Challenge

* Drive the creation of your app using tests - either cucumber or rspec as you prefer
* Makers sign up to chitter with their email, password, name and a user name (e.g. sam@makersacademy.com, s3cr3t, Samuel Russell Hampden Joseph, tansaku).
* The username and email are unique.
* Peeps (posts to chitter) have the name of the maker and their user handle.
* Use bcrypt to secure the passwords.
* Use data mapper and postgres to save the data.
* You don't have to be logged in to see the peeps.
* You only can peep if you are logged in.


### Solution

I started off with using the User Stories to create a User model. The User model creates a users relation which stores a username, name, email and password. The User can create an account with both email/username verified.

The Peep model creates a peeps relation which stores a peep.

The landing page allows a user to see peeps from all users, starting with the most recent.

Installation:
```
$ git clone https://github.com/hanrattyjen/chitter_challenge
$ bundle
$ createdb chitter_development
$ rake auto_migrate
$ rspec
$ rackup
```

Deployed web app can be found at https://chitter-chitter-bang-bang.herokuapp.com

Screen shot from home screen:

[![Screen Shot 2016-10-23 at 22.09.24.png](https://s13.postimg.org/xtf5zlphz/Screen_Shot_2016_10_23_at_22_09_24.png)](https://postimg.org/image/rshh2j2vn/)


### Technologies used
* Ruby
* Sinatra
* HTML5
* CSS3
* Git
* Heroku
* Postgresql
* Rspec
* Capybara
* Bcrypt
* Datamapper

### Next
Now that the User and Peep have been created, there is so much potential. I will return to Chitter!
* Get the Users to interact with each other and have the ability to reply to peeps. This would involve a many-to-many relationship, so it would be interesting to see how it is done.
* For my first attempt at CSS, it's passable btu messy. So, work on the CSS.
* User could have profile picture.
* User could have the ability to upload an image.
