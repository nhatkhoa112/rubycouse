require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

users = [
          {username: "mashur",password: "password1" },
          {username: "jack", password: "password2" },
          {username: "arya", password: "password3" },
          {username: "johnshow" , password: "password4" },
          {username: "heisenbeg" , password: "password5 "},
        ]

def create_hash_digest(password)
BCrypt::Password.create(password)
end

def verify_hash_digest(password)
BCrypt::Password.new(password)
end

#new_password = create_hash_digest("password1")
#puts new_password

def create_secue_users(list_of_users)
  list_of_users.each do |user_record|
    puts user_record [:password] = create_hash_digest(user_record [:password])
  end
  list_of_users
end

puts create_secue_users(users)
