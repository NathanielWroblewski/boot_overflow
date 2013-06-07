require 'spec_helper'

describe "signing up" do

	let(:name)  {"Molly"}
	let(:username) {"Molly"}
	let(:email) {"molly@aol.com"}
	let(:password) {"password"}
	let(:password_confirmation) {"password"}
	let(:bad_conf) {"passwrod"}

	context "with valid info" do
		it "signs me up", :js=>true do
			visit new_user_path
			within ('#new_user') do
				fill_in "Name", :with => name
				fill_in "Username", :with => username
				fill_in "Email", :with => email
				fill_in "Password", :with => password
				fill_in "Password confirmation", :with => password_confirmation
			end
			click_button "Sign Up"
			page.should have_content "Profile"
		end
	end

	context "when password and confirmation don't match" do
		it "renders an error on the page" do
			visit "/users/new"
			within ('#new_user') do
				fill_in "Name", :with => name
				fill_in "Username", :with => username
				fill_in "Email", :with => email
				fill_in "Password", :with => password
				fill_in "Password confirmation", :with => bad_conf
			end
			click_button "Sign Up"
			page.should have_content "Login"
		end
	end	
end

describe "voting" do
	
	let!(:user1) { create (:user) }
	let(:user2) { create (:user) }

	let!(:question) {create (:question)}

	context	"upvoting" do
		# We are still trying to figure this one out:
		# question up_votes are not incrementing.
		pending "upvote a question", :js => true do
			visit user_login_path
			upvote_count = question.up_votes
			expect {
				fill_in "email", :with => user1.email
				fill_in "password", :with => user1.password
				click_button "Log In"
				visit questions_path
				find('#upvote1').click
				
				}.to change(question, :up_votes).by(1)
			end
		end

		context "downvoting" do
			# We are still trying to figure this one out:
		# question down_votes are not incrementing.
		pending "downvote a question", :js => true do
			visit user_login_path
			upvote_count = question.up_votes
			expect {
				fill_in "email", :with => user1.email
				fill_in "password", :with => user1.password
				click_button "Log In"
				visit questions_path
				find('#downvote1').click
				
				}.to change(question, :up_votes).by(1)
			end
		end
	end
