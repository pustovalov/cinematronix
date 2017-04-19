FactoryGirl.define do
  factory :movie do
    name { Faker::HarryPotter.book }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app', 'assets', 'images', 'default_cover.jpg'), 'image/jpg') }
    duration { rand(8000...13000) }
    genre { Faker::Book.genre }
    description { Faker::Lorem.sentence(5) }
  end
end
