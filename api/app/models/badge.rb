class Badge < ActiveRecord::Base
  belongs_to :teacher
  validates :content, :vote_count, presence: true

  after_initialize :init

  private

  def init
    self.vote_count  ||= 0 #will set the default value only if it's nil
  end
end
