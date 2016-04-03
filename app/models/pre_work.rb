class PreWork < ActiveRecord::Base
  belongs_to :bootcamp, :dependent => :destroy
  has_many :exercises

  validates :bootcamp, :presence => true
  validates :url, :presence => true
  validates :learning_unit, :presence => true

  def status(student)
    exercise = student.exercises.find_by_pre_work_id(self.id)
    exercise ? exercise.status : 'To do'
  end

  def link(student)
  end
end
