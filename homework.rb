users = [
          {username: "mashur",password: "password1" },
          {username: "jack", password: "password2" },
          {username: "arya", password: "password3" },
          {username: "johnshow" , password: "password4" },
          {username: "heisenbeg" , password: "password5 "},
        ]

def auth_user(username, password, list_of_users)
   list_of_users.each do |user_record|
      if user_record[:username] == username && user_record [:password] == password
      return user_record
      break
      end
    end
     "credentinals is not correct"
 end
puts " welcome to the authentication"
25.times {print "-"}
puts
puts "This program will take input username and compare password"
puts "If password is correct, you will get back the user object"


attempts = 1
while attempts < 4
    print "username: "
    username = gets.chomp
    print "password: "
    password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
     puts "Press n to quit or any other key to continue."
     input = gets.chomp.downcase
     break if input == "n"
     attempts += 1
end
puts "you have exceeded the number of attempts" if attempts == 4 
