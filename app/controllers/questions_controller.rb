class QuestionsController < ApplicationController

  def index
  	@questions = Question.all
  end

	def create
		@question = Question.create(params[:question])
	end

	def new
	end

	def edit
		@question = Question.find(params[:id])
	end

	def show
		@question = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])
	end

	def destroy
		@question = Question.find(params[:id])
		@question.destroy
	end 

end