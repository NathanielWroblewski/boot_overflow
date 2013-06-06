class Answer < ActiveRecord::Base
  attr_accessible :title, :content, :user_id, :question_id, :up_votes, :down_votes

  belongs_to :question
  belongs_to :user


  validates :title, :presence => true
  validates :content, :presence => true
  validates :user_id, :presence => true
  validates :question_id, :presence => true

end
