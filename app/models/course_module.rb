class CourseModule < ApplicationRecord
  validates :title, presence: :true
  validates :description, presence: :true

  validates :order, presence: :true, numericality: { only_integer: true }
end
