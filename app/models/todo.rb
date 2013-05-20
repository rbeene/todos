class Todo < ActiveRecord::Base
  attr_accessible :title
  validates :owner_email, presence: true

  def state
    completed_at ? 'complete' : 'incomplete'
  end
end
