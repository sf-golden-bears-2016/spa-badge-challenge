# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
teachers = Teacher.create([{ name: 'Ken'}, { name: 'Kelvin'}, { name: 'Rick MOranis'},{ name: 'Bob Saget'}, { name: 'Marty'}])

badges = Badge.create([{ content: "Most likely to be wearing an A's hat and shirt. Right now.", teacher_id: 1 }, { content: "Likely to have said, 'did you read your f-ing errors' 30 times today already.", teacher_id: 2}, { content: "Was in Honey I shrunk the kids", teacher_id: 3},{ content: "Was in a crappy 80's tv show", teacher_id: 4},{ content: "Uses foul language", teacher_id: 5}])

votes = Vote.create([{ badge_id: 1}, { badge_id: 2}, { badge_id: 3}, { badge_id: 4}, { badge_id: 5}])
