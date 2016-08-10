class Vote < ActiveRecord::Base
  belongs_to :badge
  belongs_to :voter, class_name: 'Student', :foreign_key => "voter_id"
  belongs_to :badge_votes, class_name: 'Badge', :foreign_key => "badge_id"
end
