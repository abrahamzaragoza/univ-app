class Course < ApplicationRecord
  validates :short_name, presence: true, length: { minimum: 5 }
  validates :name, presence: true, length: { minimum: 5, maximum: 35 }
  validates :description, presence: true, length: { minimum: 15, maximum: 300 }

  has_many :student_courses
  has_many :students, through: :student_courses
end
