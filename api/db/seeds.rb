# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do

  user = User.create!(
  name: FFaker::NameBR.first_name;
  )

  10.times do
    Badge.create!(
    text: Ffaker::LoremFR.phrase;
    user_id: user.id;
    votes: rand(0..10);
    )
  end


end
