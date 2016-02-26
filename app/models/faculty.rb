class Faculty < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :teachers
end
