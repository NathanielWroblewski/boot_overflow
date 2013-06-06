class DownvotesController < ApplicationController
 
 def create
   @question = Question.find(params[:question_id])
  if params.include?(:answer_id)
    @answer = Answer.find(params[:answer_id])
    current_user.down_vote!(@answer)
  else
    current_user.down_vote!(@question)
  end
    redirect_to @question
 end

end


