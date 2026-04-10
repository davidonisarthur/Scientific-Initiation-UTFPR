class Question < ApplicationRecord
  has_many :user_answers
  belongs_to :course_module

  validates :question_text, presence: true
  validates :option_a, presence: true
  validates :option_b, presence: true
  validates :correct_answer, presence: true
end
