class AnswersController < ApplicationController
	def create
	end

	def new
		@question = Question.find(params[:question_id])
	end

	def edit
		@answer = Answer.find(params[:id])
	end

	def update
	end

	def destroy
	end 

end