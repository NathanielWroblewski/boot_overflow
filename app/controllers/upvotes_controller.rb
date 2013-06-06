class UpvotesController < ApplicationController
 
 def create
   @question = Question.find(params[:question_id])
   @user = User.find(params[:format])
   # user = User.find(1)
   @user.up_vote(@question)
 end

end

