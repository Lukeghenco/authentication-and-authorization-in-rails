# TODO 

# USERS

  A user can create an account 
    - this requires a first_name, last_name, username, email & password 
    - upon completion they are setup with a session to log them in

  A user can login 
    - this requires a username & password
    - upon completion they are setup with a session to log them in

  A user can logout
    - This will clear out the logged in session 

  Roles?? 
    - Upon creation of an account: 
      - A user will have an access level of 0 
        - Which allows them to do basic functionality in the application
          - .ie (create posts, edit their own posts, and delete their own posts)

    - Role 0 (basic), Role 1 (moderator), Role 2 (Admin), Role 3 (Super-User), Role 4 (App Manager)

      Role 1 
        - can edit and destroy anyones Posts

      Role 2 (Admin)
        - Upgrade a basic account to be a moderator account 
        - Suspend moderator and basic accounts
        - do everything a moderator can do

      Role 3 (Super-User)
        - Upgrade basic, moderator to be an admin
        - can delete accounts
        - Can susspend basic, moderator and admin accounts
        - do everything a moderator can do

      Role 4 (App Manger)
        - Is a god 

  # User Model 
    first_name :string 
    last_name :string 
    username :string 
    email :string 
    password_digest :encrypted string (use bcrypt)
    role :integer

      

# Useful functions 
u.role_before_type_cast > 3