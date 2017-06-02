class User < ApplicationRecord

  has_secure_password 
  validates :first_name, :last_name, :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  enum role: {
    basic: 0, 
    moderator: 1, 
    admin: 2, 
    super_user: 3, 
    owner: 4
  }

end
