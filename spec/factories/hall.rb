FactoryGirl.define do
  factory :hall do
    name { Faker::GameOfThrones.city }
  end
end
