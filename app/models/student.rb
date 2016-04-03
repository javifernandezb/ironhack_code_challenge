class Student < ActiveRecord::Base
  has_one :bootcamp
  has_many :progresses, :dependent => :destroy
  has_many :exercises, :through => :bootcamp
end
