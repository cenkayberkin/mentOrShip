class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :students, -> { distinct }, :through => :enrollments
end
