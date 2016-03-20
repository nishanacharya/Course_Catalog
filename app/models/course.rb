class Course < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments

  def self.search(search)
	where("name LIKE ?", "%#{search}%") 
  end
end
