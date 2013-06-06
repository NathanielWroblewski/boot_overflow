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
			visit "/users/new"
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
