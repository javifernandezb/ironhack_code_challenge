class Exercise < ActiveRecord::Base
  belongs_to :user
  belongs_to :pre_work
end
