require 'factory_girl_rails'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
  FactoryGirl.create :hall
end

6.times do
  FactoryGirl.create :movie
end

movies = Movie.all
halls = Hall.all

halls.each do |hall|
  movies.each do |movie|
    FactoryGirl.create(
      :movie_session,
      hall: hall,
      movie: movie
    )
  end
end

movie_session = MovieSession.all

movie_session.each do |ms|
  200.times do
    FactoryGirl.create(:ticket, movie_session: ms)
  end
end
