class Student < ActiveRecord::Base
  has_many :badges
  has_many :votes
  has_many :badge_votes, through: :votes, class_name: 'Badge', :foreign_key => "badge_id"
end
