class Bootcamp < ActiveRecord::Base
  has_many :pre_works
  has_many :students
  has_many :exercises, :through => :pre_works

  validates :name, :presence => true
end
