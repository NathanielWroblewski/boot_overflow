require "spec_helper"

describe User do
  #test relations/associations
  it { should have_many(:questions) }
  it { should have_many(:answers) }
  
  # test validations
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password_digest) }


  # test attributes
  it "should respond to name" do

  end

  it "should respond to username" do

  end

  it "should respond to email" do

  end

end
