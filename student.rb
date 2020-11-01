# dùng module Crud2 không cần Crud. trong hàm vì inclue Crud2
require_relative 'crud2'

class Student
  include Crud2
attr_accessor :first_name, :last_name, :username, :email, :password

def initialize (firstname, lastname, username, email, password)
  @first_name = firstname
  @last_name = lastname
  @username = username
  @email = email
  @password = password
end

  def to_s
    "First_name: #{@first_name}, Last_name:#{@last_name}, Username: #{@username}, Email adress:#{@email}"
  end
end

  mashur = Student.new("mashur", "Hoshain", "mashur1", "mashur@gmail.com", "password1" )
  jack = Student.new("Jack", "Doc", "jack1", "jack@gmail.com", "password2" )

hashed_password = mashur.create_hash_digest(mashur.password)
puts hashed_password
