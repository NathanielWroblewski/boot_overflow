FactoryGirl.define do
  factory :user do
    name                Faker::Name.first_name
    sequence(:username) { |n| "Tangle#{n}"} 
    sequence(:email)    { |n| "Tangle#{n}@gmail.com"}
    password           "password"
  end

  factory :question do
    title     Faker::Lorem.sentence(word_count = 4, supplemental = false)
    content   Faker::Lorem.sentence(word_count = 20, supplemental = false)
    user_id   1
  end
end
