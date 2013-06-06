class AnswersController < ApplicationController
	def create
		@question = Question.find(params[:question_id])
		@answer = Answer.create(title: params[:answer][:title], content: params[:answer][:content], user_id: current_user.id, question_id: params[:question_id])
		redirect_to @question
	end

	def new
		@question = Question.find(params[:question_id])
	end

	def edit
		@answer = Answer.find(params[:id])
		if current_user.id == @answer.user_id
			# render template
		else
			flash[:notice] = "You cannot edit another user's answer"
		end
	end

	def update
	end

	def destroy
		@answer = Answer.find(params[:id])
		if current_user.id == @answer.user_id
			@answer.destroy
		else
			flash[:notice] = "You cannot delete another user's answer"
		end
	end 

end
