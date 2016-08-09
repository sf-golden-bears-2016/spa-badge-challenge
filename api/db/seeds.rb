# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

10.times do
  Teacher.create(name: Faker::Name.name)
end


50.times do
  Badge.create(content: Faker::Team.name, user_id: rand(1..10), vote_count: rand(0..100))
end
