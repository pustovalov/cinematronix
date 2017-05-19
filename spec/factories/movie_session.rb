FactoryGirl.define do
  factory :movie_session do
    start_time {
      Faker::Time.between(Date.today, 90.days.from_now, [:afternoon, :evening, :midnight].sample)
    }
    movie
    hall
  end
end
