require 'spec_helper'

describe "signing up" do

	let(:name)  {"Molly"}
	let(:username) {"Molly"}
	let(:email) {"molly@aol.com"}
	let(:password) {"password"}
	let(:password_confirmation) {"password"}
	let(:bad_conf) {"passwrod"}

  context "with valid info" do
		it "signs me up" do
			visit "/users/new"
			within ('#user') do
				fill_in "Name", :with => name
				fill_in "Username", :with => username
				fill_in "Email", :with => email
				fill_in "Password", :with => password
				fill_in "Password Confirmation", :with => password_confirmation
			end
			click_link "Sign Up"
			page.should have_content name
		end
	end

	# context "when password and confirmation don't match" do
	# 	it "renders an error on the page" do
	# 		visit "/users/new"
	# 		within ('#user') do
	# 			fill_in "Name", :with => name
	# 			fill_in "Username", :with => username
	# 			fill_in "Email", :with => email
	# 			fill_in "Password", :with => password
	# 			fill_in "Password Confirmation", :with => bad_conf
	# 		end
	# 		click_link "Sign Up"
	# 		page.should have_content "Error some stuff"
	# 	end
	# end
	
end