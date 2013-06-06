class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end

	def create
		@question = Question.create(params[:question])
	end

	def new
		@question = Question.new
	end

	def edit
		@question = Question.find(params[:id])
		if current_user.id == @question.user_id
			# render template
		else
			flash[:notice] = "You cannot edit another user's question"
		end
	end

	def show
		@question = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])
	end

	def destroy
		@question = Question.find(params[:id])
		if current_user.id == @question.user_id
			@question.destroy
		else
			flash[:notice] = "You cannot delete another user's question"
		end
	end 

 # #UPVOTE AND DOWNVOTE

 # def up_vote
 # 	@question = Question.find(params[:question])
 # 	current_user.up_vote(@question)
 # end

 # def down_vote
 # 	@question = Question.find(params[:question])
 # 	current_user.down_vote(@question)
 # end

end
