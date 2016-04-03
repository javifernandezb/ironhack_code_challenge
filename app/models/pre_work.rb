class PreWork < ActiveRecord::Base
  belongs_to :bootcamp, :dependent => :destroy
  has_many :exercises

  validates :bootcamp, :presence => true
  validates :url, :presence => true
  validates :learning_unit, :presence => true
end
