# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# building some cities
5.times do
  City.create(name: Faker::Address.city)
end

# making hot dogs
20.times do
  name = Faker::Name.prefix + ' ' + Faker::Name.middle_name
  weight = rand(5-40)
  weight >= 25 ? big = true : big = false
  Dog.create(name: name, weight: weight, big_dog: big, city_id: rand(1..5), )
end

# making dogsitters
40.times do
  name = Faker::FunnyName.unique.two_word_name.split(' ')
  phone = Faker::PhoneNumber.unique.cell_phone
  big = [true, false].sample
  Dogsitter.create(first_name: name[0], last_name: name[1],
  phone_number: phone, accepts_big_dogs: big, city_id: rand(1..5))
end
