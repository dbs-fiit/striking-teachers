class Teacher < ActiveRecord::Base
  validates_presence_of :name, :email, :faculty
  validates_uniqueness_of :email
  belongs_to :faculty
end
