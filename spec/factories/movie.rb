FactoryGirl.define do
  factory :movie do
    name { Faker::HarryPotter.book }
    duration { rand(8000...13000) }
    genre { Faker::Book.genre }
    description { Faker::Lorem.sentences(5) }
  end
end
