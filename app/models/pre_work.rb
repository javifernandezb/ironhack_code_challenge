class PreWork < ActiveRecord::Base
  belongs_to :bootcamp, :dependent => :destroy
  has_many :exercises
end
