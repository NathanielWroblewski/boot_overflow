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
	before do
		 create(:user)
		 create(:user)
	end
	let(:question1) {create (:question)}
	let(:question2) {create (:question)}
	let(:question3) {create (:question)}
	
	context	"upvoting" do
		it "upvote a question", :js => true do
			visit "/questions"

     expect {
      click_link ('question1')
      }.to change(Question, :up_vote).by(1)
		end
	end

	context "downvoting" do
		it "" do
			pending
		end
	end
end
