class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable

  belongs_to :bootcamp
  has_many :exercises
  has_many :pre_works, :through => :bootcamp
  has_and_belongs_to_many :assistants

  validates :bootcamp_id, :presence => true
  validates :password, :presence => true
  validates :email,
            :presence   => true,
            :format     => { :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i },
            :uniqueness => { :case_sensitive => false }
end
