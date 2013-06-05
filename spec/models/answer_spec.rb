require "spec_helper"

describe Answer do
	let(:title) {"I have a question"}
	let(:content) {"blah blah blah"}
	let(:user_id) {1}
	let(:question_id) {3}
	let(:answer) { Answer.new(title: title, content: content, user_id: user_id, question_id: question_id) }

	describe '#initialize' do

		it { should belong_to(:user) }
		it { should belong_to(:question) }
		it { should validate_presence_of(:title) }
		it { should validate_presence_of(:content) }
		it { should validate_presence_of(:user_id) }
		it { should validate_presence_of(:question_id) }

		it "should have a title" do
		# question = Question.new(title: "Title", content: "Body of text", user_id: 1)
			answer.title.should eq(title)
		end

		it "should have content" do
			answer.content.should be(content)
		end

		it "should belong to a user" do
			answer.user_id.should be(user_id)
		end

		it "should belong to a user" do
			answer.question_id.should be(question_id)
		end

	end
end
