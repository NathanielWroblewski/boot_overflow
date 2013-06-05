require "spec_helper"

describe Question do
	let(:title) {"I have a question"}
	let(:content) {"blah blah blah"}
	let(:user_id) {1}
	let(:question) { Question.new(title: title, content: content, user_id: user_id) }

	describe '#initialize' do

		it "should have a title" do
		# question = Question.new(title: "Title", content: "Body of text", user_id: 1)
			question.title.should eq(title)
		end

		it "should have content" do
			question.content.should be(content)
		end

		it "should belong to a user" do
			question.user_id.should be(user_id)
		end

	end
end
