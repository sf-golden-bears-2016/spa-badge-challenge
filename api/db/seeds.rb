require 'ffaker'

20.times do
  Teacher.create(name: FFaker::Name.name)
end

100.times do
  ids = Teacher.pluck(:id)
  Badge.create(text: FFaker::Food.fruit, teacher_id: ids.sample, votes: rand(15))
end
