class Question < ActiveRecord::Base
  attr_accessible :title, :content, :user_id
  
  belongs_to :user
  has_many :answers

end
