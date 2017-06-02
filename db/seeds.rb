users = [
  {
    first_name: 'Howard', 
    last_name: 'DeVennish', 
    username: 'howardbdev', 
    email: 'howardbdev@gmail.com', 
    password: 'password',
    role: 2
  }, 
  {
    first_name: 'John', 
    last_name: 'Schlesinger', 
    username: 'Jschels1', 
    email: 'jschels1@gmail.com', 
    password: 'password'
  }, 
  {
    first_name: 'Scott', 
    last_name: 'Bewick', 
    username: 'scottibe', 
    email: 'scottibe@gmail.com', 
    password: 'password',
    role: 3
  }, 
  {
    first_name: 'Michael', 
    last_name: 'Burak', 
    username: 'michael_burak', 
    email: 'michael_burak@gmail.com', 
    password: 'password',
    role: 1
  }, 
  {
    first_name: 'Luke', 
    last_name: 'Ghenco', 
    username: 'lukeghenco', 
    email: 'luke@gmail.com', 
    password: 'password',
    role: 4
  }
]

users.each { |user| User.create(user) }