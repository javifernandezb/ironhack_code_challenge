class Exercise < ActiveRecord::Base
  belongs_to :student, :dependent => :destroy
  belongs_to :pre_work, :dependent => :destroy

  validates :student_id, :presence => true
  validates :pre_work_id, :presence => true
  validates :url, :presence => true

  def status
    self.completed ? 'Done' : 'In progress'
  end
end
