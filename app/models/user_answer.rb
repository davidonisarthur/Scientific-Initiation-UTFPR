class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :user_choice, presence: true
  validates :correct, inclusion: { in: [ true, false ] }
end
