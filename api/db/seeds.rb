# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Teacher.create(name: FFaker::Name.name)
end

100.times do
  Badge.create(content: FFaker::Pokemon.name, teacher_id: rand(1..10))
end
