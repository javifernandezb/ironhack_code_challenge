class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable

  belongs_to :bootcamp
  has_many :exercises
  has_many :pre_works, :through => :bootcamp

  validates :bootcamp_id, :presence => true
  validates :password, :presence => true
  validates :email, :presence => true
end
