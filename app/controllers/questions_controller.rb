class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end

	def create
		p params
		@question = Question.create(title: params[:question][:title], content: params[:question][:content], 
			user_id: current_user.id)
		redirect_to questions_path(@question)
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
		@answer= Answer.new
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

end
