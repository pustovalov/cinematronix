FactoryGirl.define do
  factory :movie_session do
    start_time { Faker::Date.forward(5) }
    movie
    hall
  end
end
