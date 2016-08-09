require 'ffaker'

20.times do
  Student.create(name: FFaker::Name.name)
end

100.times do
  ids = Student.pluck(:id)
  Badge.create(text: FFaker::Food.fruit, student_id: ids.sample, votes: rand(15))
end
