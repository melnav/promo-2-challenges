require './config/application'
require './models/user'
require 'faker'

puts "Seeding database..."



# creates users with the Faker Gem
5.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email)
end


# for each user, pick randomly one ingredient or more from the list of ingredients and attach recipes to the user