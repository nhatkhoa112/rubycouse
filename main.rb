require_relative "crud"

users = [
          {username: "mashur",password: "password1" },
          {username: "jack", password: "password2" },
          {username: "arya", password: "password3" },
          {username: "johnshow" , password: "password4" },
          {username: "heisenbeg" , password: "password5 "},
        ]

hashed_users = Crud.create_secue_users(users)
puts hashed_users
