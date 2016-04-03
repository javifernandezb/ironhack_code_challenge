class PreWork < ActiveRecord::Base
  belongs_to :bootcamp
  has_many :exercises
end
