class DownvotesController < ActionController::Base
 
 def create
   @question = Question.find(params[:question_id])
   current_user.down_vote(@question)
 end

end


