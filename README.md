Lecture 8: Idea to App
=====

This week, we take an idea and turn it into an app.
You can see the changes made in code for every step in the lecture
notes as follows:

Initial app - https://github.com/rails-decal/lecture8

```ruby
rails generate model User
rails g model Quit # g is an alias for generate
# Edit migration files
rake db:migrate
annotate # Generates helpful schema info in model files
```
Step 1 - https://github.com/rails-decal/sp15-lecture8/commit/7e72a10fba977d064c1dccbebfd5e2c6f8be3ee7


```ruby
gem 'devise' # In Gemfile, not typed in terminal
bundle install
rails generate devise:install
rails generate devise User
rake db:migrate
annotate
```
Step 2 - https://github.com/rails-decal/sp15-lecture8/commit/3da2e9d9bda229e89a3d87894d4e121e50a3199f


```ruby
# Add validations
rails g migration AddUserIdToQuits
# Edit migration
rake db:migrate
annotate
# Add validation for user_id
```
Step 3 - https://github.com/rails-decal/sp15-lecture8/commit/e33f4a22a26b9c941239212928bf5410ae83f209


```ruby
# Add routes
rake routes # To review the routes you made
# Make app/controllers/users_controller.rb, app/views/users/show.html.erb
# Edit db/seeds.rb
rake db:schema:load db:seed
```
Step 4 - https://github.com/rails-decal/sp15-lecture8/commit/db03dc7f79a9bde4aace142ecad4bb49beb405cd

```ruby
rails generate simple_form:install --bootstrap
```
Step 5 - https://github.com/rails-decal/sp15-lecture8/commit/c639aea8e85b1f7d3a68fa84a352f02f22f28697

Step 6 - https://github.com/rails-decal/sp15-lecture8/commit/2b20a8e182cc5c92cd38676be2c0d10526ef6b0e

