class Exercise < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  belongs_to :pre_work, :dependent => :destroy

  def status
    self.completed ? 'Done' : 'In progress'
  end
end
