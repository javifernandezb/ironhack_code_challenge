class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :bootcamp
  has_many :progresses, :dependent => :destroy
  has_many :exercises, :through => :bootcamp
end
