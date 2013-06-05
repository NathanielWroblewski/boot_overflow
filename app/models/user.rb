class User < ActiveRecord::Base
  attr_accessible :name, :username, :email, :password_digest

  has_secure_password
  has_many :questions
  has_many :answers
end
