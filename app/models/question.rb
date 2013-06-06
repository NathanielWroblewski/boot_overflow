class Question < ActiveRecord::Base
  attr_accessible :title, :content, :user_id, :up_votes, :down_votes
  make_voteable

  belongs_to :user
  has_many :answers



  validates :title, :presence => true
  validates :content, :presence => true
  validates :user_id, :presence => true

end
