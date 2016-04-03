class Exercise < ActiveRecord::Base
  belongs_to :user
  belongs_to :pre_work

  def status
    self.completed ? 'Done' : 'In progress'
  end
end
