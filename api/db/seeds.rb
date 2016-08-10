# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
teachers = Teacher.create([{ name: 'Ken'}, { name: 'Kelvin'}])

badges = Badge.create([{ content: "Most likely to be wearing an A's hat and shirt. Right now.", teacher_id: 1 }, { content: "Likely to have said, 'did you read your f-ing errors' 30 times today already.", teacher_id: 2}])

votes = Vote.create([{ badge_id: 1, value: 0}, { badge_id: 2}])