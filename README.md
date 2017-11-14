Little Shop: e-commerse app built to emulate Coursera style educational service business model. This project is built with Active Record ORM and Postgresql database, Ruby on Rails and uses MVC architecture. This project builds services for: authentication, authorization, and session carts. It implements contoller level permission controls to prevent unauthorized account access and namespaced routing to allow to further build out multitenancy functionality.

Upon account creation, users are assigned the default role of _registered member_ and may use the site to add desired courses to their cart, and may place their orders at checkout. Logged in users may access their user dashboard, while admin users may access an admin dashboard that allows the admin_user to view all orders to date, along with links to individual order pages. Admins may also add, delete, edit, and change the status of courses on the app. Only admins can edit their own user information. Unregistered or guest users may add courses to the cart, however, if they try to checkout, they will be prompted to create a valid account. 

### Getting started: a quick introduction of the minimal setup you need to run locally
1. Clone this repo, then run the following commands in the command line: 

```shell
gem install bundle
bundle install
rake db:create
rake db:migrate
rake db:seed 
rails server
```
_the seed file will create users, courses, and orders; an admin level account should be added manually_

Production: [heroku-app link: https://radiant-scrubland-30391.herokuapp.com]

### Developing: here's a brief intro about what a developer must do in order to start developing the project further

```shell
git clone git@github.com:thedanielvogelsang/little_shop.git
 (or)
git clone https://github.com/thedanielvogelsang/little_shop
cd little_shop
gem install bundle
bundle install
rake db:create
```

_After cloning the repository, cd into little_shop directory and feel free to look around. This is a postgres database and the developer needs to create the database._

### Building: to build the project after code changes, state additional steps here

```shell
./configure
make
make install
```
_state what happens when the code above gets executed_
