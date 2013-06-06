class UpvotesController < ApplicationController
 
 def create
   @question = Question.find(params[:question_id])
   # @user = User.find(params[:format])
   current_user.up_vote(@question)
 end

end

