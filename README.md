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
Step 1 - https://github.com/rails-decal/lecture8/compare/master...step1


```ruby
gem 'devise' # In Gemfile, not typed in terminal
bundle install
rails generate devise:install
rails generate devise User
rake db:migrate
annotate
```
Step 2 - https://github.com/rails-decal/lecture8/compare/step1...step2


```ruby
# Add validations
rails g migration AddUserIdToQuits
# Edit migration
rake db:migrate
annotate
# Add validation for user_id
```
Step 3 - https://github.com/rails-decal/lecture8/compare/step2...step3


```ruby
# Add routes
rake routes # To review the routes you made
# Make app/controllers/users_controller.rb, app/views/users/show.html.erb
# Edit db/seeds.rb
rake db:reset
```
Step 4 - https://github.com/rails-decal/lecture8/compare/step3...step4

```ruby
rails generate simple_form:install --bootstrap
```
Step 5 - https://github.com/rails-decal/lecture8/compare/step4...step5

Step 6 - https://github.com/rails-decal/lecture8/compare/step5...step6

