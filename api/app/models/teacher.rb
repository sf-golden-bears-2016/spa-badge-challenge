class Teacher < ActiveRecord::Base
  has_many :badges
  has_many :votes
end
