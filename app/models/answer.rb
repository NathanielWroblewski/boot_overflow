class Answer < ActiveRecord::Base
  attr_accessible :title, :content, :user_id, :question_id

  belongs_to :question
  belongs_to :user

end
