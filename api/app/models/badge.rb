class Badge < ActiveRecord::Base
  validates :content, :teacher_id, presence: true
  belongs_to :teacher
  has_many :votes
end
