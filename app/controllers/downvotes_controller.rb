class DownvotesController < ActionController::Base
 
 def create
   @question = Question.find(params[:question_id])
   @user = User.find(params[:format])
   @user.down_vote(@question)
 end

end


