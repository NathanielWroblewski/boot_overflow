FactoryGirl.define do
  factory :user do
    name Faker::Name.first_name
    username Faker::Name.first_name 
    sequence(:email) { |n| "Tangle#{n}@gmail.com"}
    password_digest "password"
  end
end
