class Badge < ActiveRecord::Base
  belongs_to :student
  has_many :votes
  has_many :voters, through: :votes, class_name: 'Student', :foreign_key => "voter_id"
end
