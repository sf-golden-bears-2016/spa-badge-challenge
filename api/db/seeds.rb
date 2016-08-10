# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


student1 = Student.create(name:'Sally')
student2 = Student.create(name: 'Jerry')
badge1 = Badge.create(phrase:"this person is soooo cool", student_id: 1)
badge2 = Badge.create(phrase: "great hugger", student_id: 2)
vote1 = Vote.create(vote_type:true, student_id: 1, badge_id: 1)
vote2 = Vote.create(vote_type:false, student_id: 1, badge_id: 2)
vote3 = Vote.create(vote_type:true, student_id: 2, badge_id: 1)
