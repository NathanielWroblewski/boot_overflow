class User < ActiveRecord::Base
  validates :name, :presence => true 
  validates :username, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates :password_digest, :presence => true


  attr_accessible :name, :username, :email, :password_digest

  has_secure_password
  has_many :questions
  has_many :answers

end
