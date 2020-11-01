require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

my_password = BCrypt::Password.create("my password")
my_password1 = BCrypt::Password.create("my password")
my_password2= BCrypt::Password.create("my password")


puts my_password
puts my_password1
puts my_password2
puts my_password1 == my_password
puts my_password == "my password"
puts my_password1 == "my password"
