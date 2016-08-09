10.times do
  Teacher.create(name: Faker::Name.name)
end

50.times do
  Badge.create(content: Faker::Team.name, teacher_id: rand(1..10), vote_count: rand(0..100))
end
