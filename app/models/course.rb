class Course < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments

  has_many :course_subjects
  has_many :subjects, through: :course_subjects

  def self.search(search)
	Course.where(Course.arel_table[:Name].matches("%#{search}%"))
  end
end
